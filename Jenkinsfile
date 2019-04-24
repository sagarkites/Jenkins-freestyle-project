pipeline {
  agent {
    node {
        label 'any'
        customWorkspace '/var/lib/jenkins'
    }
}
  stages {
    stage('Building image') {
        steps{
        sh '''
            sudo docker build /var/lib/jenkins
           '''
      }
    }
  }
}  
