pipeline {
    agent any

    stages {
        stage('clone-code') {
            steps {
                git credentialsId: 'Github_cred', branch: 'main', url: 'https://github.com/RKruit/tweet-trend-new.git'
            }
        }
    }
}
