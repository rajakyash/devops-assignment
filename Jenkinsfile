pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git 'https://github.com/rajakyash/devops-assignment.git'
            }
        }

        stage('List Files') {
            steps {
                sh 'ls -la'
            }
        }

    }
}