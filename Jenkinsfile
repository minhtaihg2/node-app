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
          sh 'pwd'
          sh 'script/deploy_v2.sh'
          input message: 'finish process...'
        }
     } 
   }
   post {
     always {
       sh 'this is always'
     }
     success {
       sh 'this is sucess'
     }
   }        
}           
            
            
