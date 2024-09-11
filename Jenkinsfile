pipeline {
    agent any
    options {
      buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '3')
    }
    
    stages {
        stage("Git Checkout"){
            steps {
                sh "echo Code Pulled"
            }
        }
        stage("Run Ansible Step"){
            steps{
		    ansibleAdhoc(credentialsId: 'Ansible',inventory: 'module_practice/inventory/Devlopment.yml', hosts: 'dev_servers', module: 'ping')
            }
        }
    }
}
