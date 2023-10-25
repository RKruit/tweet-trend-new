pipeline {
    agent {
        label "maven"
    }
environment {
    PATH = "/usr/bin:$PATH"
}
    stages {
        stage('build') {
            steps {
                sh 'ls -l /usr/bin'
                sh 'mvn clean deploy'
            }
        }
    }
}
