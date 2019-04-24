pipeline {
  environment {
    registry = "sagarscott/scott"
    registryCredential = 'dockerhub'
  }
  agent any
  stages {
    stage('Building Docker') {
      steps{
        script {
          dockerImage=docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Hub') {
      steps{
        script {
          docker.withRegistry( ‘https://cloud.docker.com/u/sagarscott/repository/docker/sagarscott/scott’, registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
  }
}
