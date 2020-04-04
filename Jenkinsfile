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
       stage('Test') {
           steps {
                sh 'script/test'
           }
       }
       stage('Deploy') {
           steps {
                sh 'script/deploy'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh 'script/kill'
           }
       }
   } 
}
