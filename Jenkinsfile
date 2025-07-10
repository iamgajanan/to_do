pipeline {
  agent {
    docker {
      image 'cirrusci/flutter:3.27.4'
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
