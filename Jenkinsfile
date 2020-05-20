pipeline {
    agent any
     stages {
     stage('Deploy') { 
           steps {
             sh ''' #! /bin/bash 
             
             aws deploy create-deployment --application-name jenkinApp --deployment-group-name jenkindeploy --deployment-config-name CodeDeployDefault.AllAtOnce --github-location repository=tushar8871/chatApplication,commitId=${GIT_COMMIT}
             '''
            }
        }
        
        
    }
    
    
}
