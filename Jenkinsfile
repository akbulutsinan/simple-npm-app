pipeline {
    agent {
		label "localhost-agent"
	}
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
				sh 'npm run build'
				sh 'docker build -t simple-npm:v1.0.0 .'
            }
        }
		stage('Deploy') {
            steps {
				sh 'docker run -d simple-npm:v1.0.0'
            }
        }
    }
}
