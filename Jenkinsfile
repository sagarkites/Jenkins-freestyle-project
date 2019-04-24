pipeline {
  environment {
    registry = "sagarscott/scott"
    registryCredential = 'dockerhub'
  }
  agent any
  stages {
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Push Docker Image') {
      steps{
            sh '''
               docker tag 91a75fcd8da7 sagarscott/scott:MyImage
               docker push  sagarscott/scott:MyImage
               '''
        }
      }
    }
  }
}

