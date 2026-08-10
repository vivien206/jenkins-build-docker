node{
    def app
    stage('clone') {
        checkout scm
    }

    satge('Build image') {
        app = docker.build("vivien/nginx")
    }

    stage('Run image')  {
        docker.image('vivien/nginx').withRun('-p 80:80')  { c ->
        
        sh 'docker ps'

        sh 'curl localhost'

        }
    }
}