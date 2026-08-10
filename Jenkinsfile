node {
    stage('clone') {
        git url: 'https://github.com/vivien206/jenkins-build-docker.git', branch: 'master'
    }

    stage('build') {
        sh 'docker build -t jenkins-build-docker .'
    }

    stage('run') {
        sh 'docker run --rm jenkins-build-docker'
    }
}
