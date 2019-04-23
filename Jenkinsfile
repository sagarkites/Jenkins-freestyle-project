pipeline {
    agent any
  environment {
    registry = "sagarscott/scott"
    registryCredential = 'docker_credentials'
  }
  
  stages {
    stage('Building image') {   
        steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
  }
}  
