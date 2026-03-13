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

        stage('Install Trivy') {
            steps {
                sh '''
                sudo apt-get update
                sudo apt-get install -y wget
                wget https://github.com/aquasecurity/trivy/releases/latest/download/trivy_0.50.1_Linux-64bit.deb
                sudo dpkg -i trivy_0.50.1_Linux-64bit.deb
                '''
            }
        }

        stage('Terraform Security Scan') {
            steps {
                sh '''
                echo "Running Trivy security scan on Terraform code"
                trivy config terraform/
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