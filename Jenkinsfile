pipeline {
    agent {
        label "maven"
    }
environment {
    PATH = "/usr/share/maven/bin:$PATH"
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
