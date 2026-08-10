node {
    stage('clone') {
        git url: 'https://github.com/vivien206/jenkins-build-docker.git', branch: 'master'
    }

    stage('build') {
        sh 'docker build -t jenkins-build-docker .'
    }

stage('run') {
    steps {
        sh '''
            docker rm -f jenkins-build-docker-container 2>/dev/null || true
            docker run -d --name jenkins-build-docker-container -p 8081:80 jenkins-build-docker
        '''
    }
}

}
