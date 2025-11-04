pipeline {
	agent any
	
	triggers {
		pollSCM('* * * * *')
	}

	stages {
		stage('Checkout') {
			step {
				git branch: 'main'
				url: 'https://github.com/ycircle86/source-maven-java-spring-hello-webapp.git'	
			}
		}
		stage('Build') {
			steps {
				sh 'mn clean package
			}
		}
                stage('Deploy'){
			steps {
				deploy adapters :[tomcat9(credentialsId: 'tomcat-manager', url: 'http://192.168.56.102:8080')], contextPat: null, war: 'target/hello-world.war'
			}
		}

	}
}
