node {
  stage('Clone the Git') {
    git 'https://github.com/syedshah007/simple-java-maven-app.git'
  }
  stage('SonarQube analysis') {
    def scannerHome = tool 'sonarqube';
    withSonarQubeEnv('sonarqube') {
      sh "${scannerHome}/bin/sonar-scanner \
      -D sonar.login=admin \
      -D sonar.password=admin123 \
      -D sonar.projectKey=TEST-SONAR \
      -D sonar.host.url=http://192.168.1.94:9000/"
    }
  }
}
