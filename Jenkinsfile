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
                     
                     sudo docker build -t apptest:latest .
                     
                     '''
                     
                   } 
                }
            stage('PushDockerImage') {
                
                  steps {
                   
                     sh '''
                     
                     sudo docker tag apptest:latest 
yoandry/apptest:latest
                     sudo docker push yoandry/apptest:latest
                     
                     '''
                  }    
               }    
    }
     
     
}
