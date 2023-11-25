pipeline{
    agent any

    environment {
        DOCKER_IMAGE = 'my_flask_app'
    }

    stages {
        stage('Checkout'){
            steps {
                git 'git@github.com:m-cvetkoski/jenkins_repo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${DOCKER_IMAGE} ."
                }
            }
        }  
    }

    post {
        success {
            echo 'Docker image built and pushed successfully!'
        }
        failure {
            echo 'Docker image build or push failed!'
        }
    }
}
