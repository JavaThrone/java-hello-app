pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "M3"
    }
    environment {
        NODE_ENV = 'prod'
    }

    stages {
        stage('source') {
            steps {
                echo NODE_ENV
                // Get some code from a GitHub repository
                git 'https://github.com/JavaThrone/java-hello-app.git'
            }
        }
        stage('build') {
            steps {
                // Run Maven on a Unix agent.
                sh "mvn -Dmaven.test.skip=true clean package"
            }
        }
        stage('saveArtifact') {
            steps {
                archiveArtifacts artifacts: '**', followSymlinks: false
            }
        }
    }
}
