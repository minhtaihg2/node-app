pipeline {
  agent any
  parameters {
    string('name': 'ENV', defaultValue: 'production')
  }
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
          echo "Env: ${params.ENV}"
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
