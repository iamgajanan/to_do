pipeline {
  agent {
    docker {
      image 'cirrusci/flutter:3.27.4'
      args '-u root:root'
    }
  }

  options {
    skipDefaultCheckout(true)
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Dependencies') {
      steps {
        sh 'flutter pub get'
      }
    }

    stage('Build APK') {
      steps {
        sh 'flutter build apk --split-per-abi'
      }
    }

    stage('Archive') {
      steps {
        archiveArtifacts artifacts: 'build/app/outputs/flutter-apk/*.apk', fingerprint: true
      }
    }
  }
}
