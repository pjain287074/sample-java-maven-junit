pipelineJob('demo-CI-Pipeline4') {
    definition {
        cps {
            script("""
                pipeline {
                    agent any

                    tools {
                        maven 'mvn'
                    }
                    stages {
                        stage('Checkout') {
                            steps {
                                git branch: 'demo', url: 'https://github.com/pjain287074/sample-java-maven-junit.git'
                            }
                        }
                        stage('Test') {
                            steps {
                                sh 'mvn test -f webapp/pom.xml'
                            }
                        }
                        stage('Package') {
                            steps {
                                sh 'mvn package -f webapp/pom.xml'
                            }
                        }
                    }
                }
            """)
        }
    }
}
