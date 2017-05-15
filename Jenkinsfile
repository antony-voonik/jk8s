pipeline {
	agent node

	stages {
		stage('Bake') {
			steps {
				echo 'hello'
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
