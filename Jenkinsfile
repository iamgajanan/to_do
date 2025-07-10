pipeline {
  agent {
    docker {
      image 'jenkins/jenkins'
      args '-u root:root'
    }
  }

  stages {
    stage('Build') {
      steps {
        sh 'flutter pub get'
        sh 'flutter build apk --split-per-abi'
      }
    }
  }
}
