pipeline {
    agent any
     stages {
     stage('Deploy') { 
           steps {
             sh ''' #! /bin/bash 
             
             aws deploy create-deployment --application-name chatApp-TF --deployment-group-name tf-deploygroup --deployment-config-name CodeDeployDefault.AllAtOnce --github-location repository=https://github.com/tushar8871/chatApplication,commitId=${GIT_COMMIT}
             '''
            }
        }
        
        
    }
    
    
}
