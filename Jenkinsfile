pipeline {
  agent any {
    node {
        customWorkspace '/var/lib/jenkins'
    }
}
  stages {
    stage('Building image') {
        steps{
        sh '''
            cd /var/lib/jenkins
            sudo docker build .
           '''
      }
    }
  }
}  
