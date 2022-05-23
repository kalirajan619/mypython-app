pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
         stage('Checkout Source') {
      steps {
        git 'https://github.com/kalirajan619/mypython-app.git'
      }
    }
        

        stage('Build') { 
            steps { 
                script{
                 app = docker.build("mypythonapp")
                }
            }
        }
        stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "frontend.yaml", kubeconfigId: "kube")
        }
      }
    }
    }
}
