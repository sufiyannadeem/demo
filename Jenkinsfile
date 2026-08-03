pipeline {

    agent { label 'prod' }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                cp -r * /var/www/html/
                '''
            }
        }

    }
}
