pipeline {
    agent any
    options {
      buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '3')
    }
    environment {
        ANSIBLE_HOST_KEY_CHECKING = 'False'
        ANSIBLE_SCP_IF_SSH = 'True'
    }
    
    stages {
        stage("Run Ansible Step"){
            steps{
            	withCredentials([sshUserPrivateKey(credentialsId: 'Ansible', keyFileVariable: 'Ansible-SSH')]) {
            		ansiColor('xterm') {
			    // some block
			    ansibleAdhoc(credentialsId:'Ansible-SSH-key',inventory: 'module_practice/inventory/Devlopment.yml', hosts: 'localhost', module: 'ping',colorized:true)
			}
		}
		   
            }
        }
    }
}
