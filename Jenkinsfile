pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven"
    }

    stages {
        stage('code checkout') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/nthraj1989/spring-docker.git'
            }
        }

		stage('build') {
            steps {
                script{
				   bat "mvn clean install"
				}
            }
        }

		stage('build docker image') {
            steps {
                script{
				    bat 'docker build -t niitrajnish/spring-docker .'
				}
            }
        }
    }
}
