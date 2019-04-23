pipeline {
  environment {
    registry = "sagarscott/scott"
    registryCredential = 'docker_credentials'
  }
  stages {
    agent any
    stage('Building image') {
      steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
  }
}  
