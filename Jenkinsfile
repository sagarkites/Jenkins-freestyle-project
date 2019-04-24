pipeline {
  agent any
  stages {
    stage('Building image') {
        steps{
        sh '''
            cd /var/lib/jenkins/workspace/Docker Build Pipeline
            sudo docker build .
           '''
      }
    }
  }
}  
