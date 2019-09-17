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
                     
                     sudo docker build -t aptest:latest .
                     
                     '''
                     
                   } 
                }
            stage('PushDockerImage') {
                
                  steps {
                   
                     sh '''
                     
                     sudo docker tag aptest:latest yoandry/aptest:latest
                     sudo docker push yoandry/aptest:latest
                     
                     '''
                  }    
               }    
    }
     
     
}
