pipeline {
  stages {
    stage('Building image') {
        agent any
        steps{
        sh '''
            cd /var/lib/jenkins/workspace/Docker Build Pipeline
            sudo docker build .
           '''
      }
    }
  }
}  
