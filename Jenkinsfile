// Jenkinsfile
pipeline {
    agent any

    environment {
        IMAGE_NAME = "python-flask-app"
        TAG = "latest"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/your-username/python-flask-docker.git'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME:$TAG .'
            }
        }

        stage('Docker Run') {
            steps {
                sh 'docker run -d -p 5000:5000 $IMAGE_NAME:$TAG'
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
                sh 'docker tag $IMAGE_NAME:$TAG $DOCKER_USERNAME/$IMAGE_NAME:$TAG'
                sh 'docker push $DOCKER_USERNAME/$IMAGE_NAME:$TAG'
            }
        }
    }
}
