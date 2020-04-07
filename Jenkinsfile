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
          sh 'date'
          sh 'script/deploy_v2.sh'
        }
        steps {
          sh 'echo pwd'
        } 
     } 
   }        
}           
            
            
