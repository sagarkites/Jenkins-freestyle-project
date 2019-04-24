pipeline {
  environment {
    registry = "sagarscott/scott"
    registryCredential = 'dockerhub'
  }
  agent any
  stages {
    stage('Building Docker Image') {
      steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
  }
    
