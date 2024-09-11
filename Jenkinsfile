pipeline {
    agent any
    options {
      buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '3')
    }
    
    stages {
        stage("Run Ansible Step"){
            steps{
		    ansibleAdhoc(inventory: 'module_practice/inventory/Devlopment.yml', hosts: 'localhost', module: 'ping')
            }
        }
    }
}
