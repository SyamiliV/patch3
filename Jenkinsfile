node{
stage ('SCM Checkout') {

git 'https://github.com/SyamiliV/Devops-project.git'

}

stage ( 'Build') {
def mvnhome = tool name: 'M2_HOME', type: 'maven'
  sh "${mvnhome}/bin/mvn clean install package"
}
stage ( 'Copy to tomcat server' ) {
   
    sh 'scp -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/pipeline_jenkins/webapp/target/*.war ec2-user@13.59.229.169:/opt/tomcat/webapps/'
}
    
  

  
}
