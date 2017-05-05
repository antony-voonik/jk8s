pipeline {
	agent any

	stages {
		stage('Bake') {
			steps {
				sh	'docker build -t padayattil/jk8s:latest .'
			}
		}
		stage('Test') {
			sh 'kubectl/helm create env'
			sh 'ruby run tests'
			sh 'kubectl/helm delete env'
		}
		stage('Deploy') {
			sh 'kubectl deploy'
		}
	}
}