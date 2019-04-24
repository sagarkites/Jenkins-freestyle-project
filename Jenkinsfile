pipeline {
  agent {
    node {
        label 'master'
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
