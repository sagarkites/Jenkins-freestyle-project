pipeline {
  environment {
    registry = "sagarscott/scott"
    registryCredential = ‘docker_credentials’
  }
  agent any
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
