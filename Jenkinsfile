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
          dockerImage=docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy Docker Image') {
      steps{
        script {
          docker.withRegistry( ‘https://cloud.docker.com/u/sagarscott/repository/docker/sagarscott/scott’, registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
 
