pipeline {
  agent any 
  stages {
    stage('Building image') {
        steps{
        sh '''
            cd /var/lib/jenkins
            sudo docker build .
           '''
      }
    }
  }
}  
