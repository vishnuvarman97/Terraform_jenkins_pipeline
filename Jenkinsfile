pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-access')
        AWS_DEFAULT_REGION    = 'ap-south-1'
    }


    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/vishnuvarman97/Terraform_jenkins_pipeline.git'
            }
        }
           stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
           stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }           
           stage('terraform destroy') {
           steps {
               sh 'terraform destroy --auto-approve'
            }
        }
    }
}
