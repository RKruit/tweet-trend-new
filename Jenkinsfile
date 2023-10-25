pipeline {
    agent {
        label "maven"
    }
environment {
    PATH = "/opt/apache-maven-3.9.5/bin:$PATH"
}
    stages {
        stage('build') {
            steps {
                sh 'ls -al /opt'
                sh 'mvn clean deploy'
            }
        }
    }
}
