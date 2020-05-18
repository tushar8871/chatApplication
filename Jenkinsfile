pipeline {
    stages {       
     stage('Deploy') { 
           steps {
             sh ''' #! /bin/bash 
             
             aws deploy create-deployment --application-name chatApp --deployment-group-name chatDG --deployment-config-name CodeDeployDefault.AllAtOnce --github-location repository=https://github.com/tushar8871/chatApplication.git,commitId=${GIT_COMMIT}
             '''
            }
        }
        
    }
    post { 
        always { 
            echo 'Stage is success'
        }
    }
    
    
}
