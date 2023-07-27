pipeline {
  agent any
  stages {
    stage('compile') {
      steps {
        sh 'mvn compile -f webapp/pom.xml'
      }
    }

    stage('test') {
      steps {
        sh 'mvn test -f webapp/pom.xml'
      }
    }

  }
}