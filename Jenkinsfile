pipeline {
    agent { label 'test' }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Copy to Test Server') {
            steps {
                sh '''
                cp -r * /var/www/html/
                '''
            }
        }

    }
}
