node {
    
stage ('source') {
    
    git 'https://github.com/SyamiliV/Devops-project.git'
}
stage ('build') {
    
    def maven_home = tool name: 'M2_HOME', type: 'maven'
    sh "${maven_home}/bin/mvn clean install package"
