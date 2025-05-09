pipeline {
    agent any
    
    stages {
        stage('Checkout Code') {
            steps {
                script {
                    // הגדרת הסניף והמאגר
                    checkout([
                        $class: 'GitSCM',
                        branches: [[name: '*/main']],  // מצביע על הסניף 'main'
                        doGenerateSubmoduleConfigurations: false,
                        extensions: [],
                        submoduleCfg: [],
                        userRemoteConfigs: [[url: 'https://github.com/Oren1984/python-flask-docker.git']]
                    ])
                }
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    // הצע את קוד הדחיפה שלך ל־Docker פה
                    echo 'Building Docker image...'
                }
            }
        }

        stage('Docker Run') {
            steps {
                script {
                    // הצע את קוד הריצה שלך ב־Docker פה
                    echo 'Running Docker container...'
                }
            }
        }

        stage('Docker Push') {
            steps {
                script {
                    // הצע את קוד הדחיפה שלך ל־Docker Hub פה
                    echo 'Pushing Docker image...'
                }
            }
        }
    }
}
