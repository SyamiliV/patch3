node{
stage ('SCM Checkout') {

git 'https://github.com/SyamiliV/Devops-project.git'

}

stage ( 'Build') {
def mvnhome = tool name: 'M2_HOME', type: 'maven'
  sh "${mvnhome}/bin/mvn package"
}

stage ( 'Copy to tomcat server' ) {
   
    sshagent(['tomcat_dev']) {
    sh 'scp -o StrictHostKeyChecking=no target/*.war ec2-user@13.59.229.169:/opt/tomcat/webapps/'
}
    
  }
  
}
