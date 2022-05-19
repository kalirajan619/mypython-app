pipeline {
    agent any
        environment {
        AWS_ACCOUNT_ID="915551958967"
        AWS_DEFAULT_REGION="ap-south-1" 
        IMAGE_REPO_NAME="flask_container"
        IMAGE_TAG="mvmaruthappan	"
        REPOSITORY_URI = "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}"
    }
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

         stage('Logging into AWS ECR') {
            steps {
                script {
                sh "aws ecr get-login-password --region ${AWS_DEFAULT_REGION} | docker login --username AWS --password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com"
                }
                 
            }
        }
        stage('Test'){
            steps {
                 echo 'Empty'
            }
        }

    }
}
