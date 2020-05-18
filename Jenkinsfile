pipeline {
    agent any
     stages {
     stage('Deploy') { 
           steps {
             sh ''' #! /bin/bash 
             
             aws deploy create-deployment --application-name chatApp --deployment-group-name chatDG --deployment-config-name CodeDeployDefault.AllAtOnce --github-location repository=https://github.com/1996Shubh/Chatapp_project,commitId=${GIT_COMMIT}
             '''
            }
        }
        
        
    }
    
    
}
