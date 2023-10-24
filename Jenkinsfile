pipeline {
    agent {
        label "maven"
    }

    stages {
        stage('build') {
            agent {
                label "maven"
            }

            steps {
                sh 'mvn clean deploy'
            }
        }
    }
}
