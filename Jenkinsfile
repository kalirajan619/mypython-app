pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
         stage('Clone repository') { 
            steps { 
                script{
                checkout scm
                }
            }
        }

        stage('Build') { 
            steps { 
                script{
                 app = docker.build("mypython-Application")
                }
            }
        }
        stage('Test'){
            steps {
                 echo 'Empty'
            }
        }
        stage('Deploy') {
            steps {
                script{
                        docker.withRegistry('https://915551958967.dkr.ecr.ap-south-1.amazonaws.com', 'ecr:ap-south-1:aws-credentials') {
                    app.push("${env.BUILD_NUMBER}")
                    app.push("vignesh")
                    }
                }
            }
        }
    }
}
