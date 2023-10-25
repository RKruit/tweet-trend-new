pipeline {
    agent {
        label "maven"
    }
environment {
    PATH = "/usr/bin:$PATH"
    stages {
        stage('build') {
            steps {
                sh 'ls -l /usr/local/bin/jenkins-agent'
                sh 'mvn clean deploy'
            }
        }
    }
}
