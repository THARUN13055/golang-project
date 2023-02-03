pipeline{
    agent any

    stages{

        stage('clean workspace'){
            steps{
                script{
                    cleanWs()
                }
            }
        }

        stage('git check'){
            steps{
                git branch: 'main', url: 'https://github.com/THARUN13055/golang-project.git'
            }
        }

        stage('docker build golang'){
            steps{
                sh '''
                docker build -t tharun13055/$JOB_NAME:latest .
                docker image prune -f
                '''
            }
        }

        stage('docker push'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'tharun13055', variable: 'dockerhub')]) {
                        sh "docker login -u tharun13055 -p ${dockerhub}"
                    }
                }
            }
        }
    }
}