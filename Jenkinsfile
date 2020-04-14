pipeline {
  agent any
  environment {
    AWS_ECR = 'http://aws.amazon.com/ecr'
    BRANCH = 'dev'
  }
  stages {
     stage('Build') {
        steps {
          echo "Environment: $AWS_ECR"
          script {
            AWS_ECR = 'https://osam.io/aws/ecr'
            BRANCH = input message: 'Choose the branch to build ', ok: 'Done!', parameters: [choice(name: 'BRANCH_NAME', choices: ['staging', 'dev', 'production'], description: 'Branch to build?')]
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
          echo "Environment: $AWS_ECR"
          echo "Branch: $BRANCH"
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
