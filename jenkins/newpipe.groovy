pipeline {
    agent any
    stages {
        stage ('pull') {
            steps {
               git ''
               echo 'pull sucessful'
            }
