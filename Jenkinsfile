pipeline {
  
  environment {
    registry = "sagarscott/scott"
    registryCredential = 'docker_credentials'
  }
  
  stages {
    stage('Building image') {
        agent any     
        steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
  }
}  
