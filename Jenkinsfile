pipeline {
  agent any
  stages {
          stage('Checkout-git') {
                
                steps {
                git 'git@github.com:yoandryhc85/instride.git'
                 }
          }
            stage('BuildImage'){
                
                  steps {
                   
                     sh '''
                     
                     sudo docker build -t apptest:latest1 .
                     
                     '''
                     
                   } 
                }
            stage('PushDockerImage') {
                
                  steps {
                   
                     sh '''
                     
                     sudo docker tag apptest:latest1 
yoandry/apptest:latest1
                     sudo docker push yoandry/apptest:latest1
                     
                     '''
                  }    
               }    
    }
     
     
}
