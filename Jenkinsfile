pipeline {
    agent any

    stages {

        stage('clone') {
            steps {
                git branch: 'master',
                    url: 'https://github.com/vivien206/jenkins-build-docker.git'
            }
        }

        stage('build') {
            steps {
                sh 'docker build -t jenkins-build-docker .'
            }
        }

        stage('run') {
            steps {
                sh '''
                    docker rm -f jenkins-build-docker-container 2>/dev/null || true
                    docker run -d \
                        --name jenkins-build-docker-container \
                        -p 8081:80 \
                        jenkins-build-docker
                '''
            }
        }
    }
}