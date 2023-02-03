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
    }
}