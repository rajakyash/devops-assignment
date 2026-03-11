pipeline {
    agent any

    stages {

        stage('List Files') {
            steps {
                sh 'ls -la'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker rm -f devops-container || true
                docker run -d -p 3000:3000 --name devops-container devops-app
                '''
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'cd terraform && terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'cd terraform && terraform plan'
            }
        }

    }
}
