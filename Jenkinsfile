pipeline {
    agent none
    stages {
        stage('Build') {
            agent { 
                label 'slave_2'
            }
            steps {
                checkout scm
                echo 'sudo yum install ansible -y'
                 
            }
        }
        stage('Test on Linux') {
            agent { 
                label 'slave_1'
            }
            steps {
                sh 'sudo yum install ansible -y'
            }
            post {
                always {
                    //always executes this command
                    echo 'Whatever, i was doing something...!'
                }
                success {
                    // When build scuccess
                    echo 'Congrats, Bulid sucess..!'
                }
                failure {
                     // When Build failurse
                     echo 'Something wnt wroung..!'
                }
            }
        }
    }
}
