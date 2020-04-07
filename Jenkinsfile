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
        when {
          branch 'master'
        }
        steps {
          sh 'date'
          sh 'pwd'
          sh 'script/deploy_v2.sh'
          input message: 'finish process..'
        }
     } 
   }
   post {
     always {
       echo 'this is always'
     }
     success {
       echo 'this is sucess'
     }
   }        
}           
            
            
