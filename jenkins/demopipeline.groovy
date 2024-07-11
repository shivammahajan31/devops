pipeline {
    agent any

    environment {
        REPO_URL = 'https://github.com/shivammahajan31/devops.git'
    }  

    stages {
        stage('pull') {
            steps {
                git branch: 'main', url: '${REPO_URL}' 
                sh 'echo "pull success"'
                     }
        }
        stage('Build') {
            steps {
                sh 'echo "build scucess"'
            }
        }   
        stage('Test') {
            steps {
                sh 'echo "test scucess"'
                   }
        
            }
        }
            
             }
