node{
stage ('SCM Checkout') {

git 'https://github.com/SyamiliV/Devops-project.git'

}

stage ( 'Build') {
def mvnhome = tool name: 'M2_HOME', type: 'maven'
  sh "${mvnhome}/bin/mvn clean install package"
}


  
}
