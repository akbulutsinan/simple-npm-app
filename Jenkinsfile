pipeline {
    agent {
		label "localhost-agent"
	}
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
		stage('Deploy') {
            steps {
                sh 'npm run build'
            }
        }
    }
}
