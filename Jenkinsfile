pipeline {
  agent any
  parameters { 
    choice(name: 'CHOICES', choices: ['staging', 'dev', 'production'], description: 'Please select branch to build?') 
  }
  environment {
    AWS_ECR = 'http://aws.amazon.com/ecr'
  }
  stages {
     stage('Build') {
        steps {
          echo "Environment: $AWS_ECR"
          input message: 'Please choose the branch to build ', ok: 'Confirm!', parameters: [choice(name: 'BRANCH_NAME', choices: ['staging', 'dev', 'production'], description: 'Branch to build?')]
          script {
            AWS_ECR = 'https://osam.io/aws/ecr'
          }
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
          echo "Parameter: ${params.ENV}"
          echo "Environment: $AWS_ECR"
          sh 'date'
          sh 'pwd'
          sh 'script/deploy_v2.sh'
          input message: 'finish process..'
          sh 'script/kill.sh'
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
