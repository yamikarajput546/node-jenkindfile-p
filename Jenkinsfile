pipeline {
    agent {
        docker {
            image 'node:lts-bullseye-slim' 
            args '-p 3000:3000' 
        }
    }
    environment {
        dockerhub =  credentials('dockerhub')
    }
    stages {

         stage('Clean') { 
            steps {
                sh 'npm clean' 
            }
        }
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }

         stage('Package') { 
            steps {
                sh 'npm pack' 
            }
        }

        stage ('Building docker image'){
            steps{
                sh 'docker build -t node-jen-p:01 .'
            }
        }
        
        stage ('Pushing to the docker hub')
        {
            steps{
                sh 'docker tag node-jen-p:01 yamikarajputd/node-jen-p:01'
                sh 'echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin'
                sh 'docker push yamikarajputd/node-jen-p:01'
            }
        }


    }
}