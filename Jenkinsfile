pipeline {
    agent {
        docker {
            image 'node:8.12.0' 
            args '-p 3000:3000' 
        }
    }
    environment {
        HOME = '.'
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
    }
    stage('Test') {
            steps {
                sh './jenkins/script/test'
            }
    
}
