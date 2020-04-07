pipeline {
  agent any
  stages {
     stage('Build') {
        steps {
          sh 'npm install'
        }    
     }
     stage('Test') {
        steps {
          sh 'script/test.sh'
        } 
     } 
      stage('Deploy') {
        steps {
          sh 'script/deploy_v2.sh'
        } 
     } 
   }        
}           
            
            
