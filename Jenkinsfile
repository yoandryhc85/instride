pipeline {
    agent any
    environment {
      ECR_DEVELOPMENT = "980422662115.dkr.ecr.us-west-1.amazonaws.com/development:latest"
      ECR_TESTING = "980422662115.dkr.ecr.us-west-1.amazonaws.com/testing:latest"
      ECR_PRODUCTION = "980422662115.dkr.ecr.us-west-1.amazonaws.com/production:latest"
    }
    stages {
      stage ('Choose the environment') {
            steps {
                script {
                   source_env = input message: 'Source Environment?',parameters: [choice(choices: ['DEVELOPMENT', 'TESTING', 'PRODUCTION'],description: '', name: 'Environment')]
                }
                echo source_env
              }
      }
    
      stage('Checkout-git') {
                
                steps {
                git 'git@github.com:yoandryhc85/instride.git'
                 }
      }
      
      stage ('Deploying in ecr_development') {
            when {
            expression { source_env == 'DEVELOPMENT' }
            }
              steps {
                
                sh '''
                     echo "Hola DEVELOPMENT"
                     sudo docker build -t development .
                     sudo docker tag development:latest ${ECR_DEVELOPMENT}
                     sudo docker push ${ECR_DEVELOPMENT}
                     
                '''
     
              }
      }
    
      stage ('Deploying in ecr_testing') {
            when {
            expression { source_env == 'TESTING' }
            }
              steps {
                
                sh '''
                     echo "Hola TESTING"
                     sudo docker build -t testing .
                     sudo docker tag testing:latest ${ECR_TESTING}
                     sudo docker push ${ECR_TESTING}
                     
                '''
  
              }
      }
      stage ('Deploying in ecr_production') {
            when {
            expression { source_env == 'PRODUCTION' }
            }
              steps {
               
                sh '''
                     echo "Hola PRODUCTION"
                     sudo docker build -t production .
                     sudo docker tag production:latest ${ECR_PRODUCTION}
                     sudo docker push ${ECR_PRODUCTION}
                     
                     
                '''
  
              }
      }
    
    
    
    
    }

}    
