pipeline {
  agent any
  stages {
          stage('Check-git') {
                
                steps {
                git 'git@github.com:yoandryhc85/instride.git'
                 }
          }
            stage('BuildImage'){
                
                  steps {
                   
                     sh '''
                     
                     sudo docker build -t appptest:latest .
                     
                     '''
                     
                   } 
                }
            stage('PushDockerImages') {
                
                  steps {
                   
                     sh '''
                     
                     sudo docker tag appptest:latest yoandry/appptest:latest
                     sudo docker push yoandry/appptest:latest
                     
                     '''
                  }    
               }    
    }
     
     
}
