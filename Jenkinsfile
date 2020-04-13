node ('master'){

stage( 'source') {


git credentialsId: 'git', url: 'https://github.com/SyamiliV/Devops-project.git'

}


try {

stage ( 'Build') {

def MVN = tool name: 'M2_HOME', type: 'maven'
sh "${MVN}/bin/mvn clean install packages"

}}


catch(e) {
    throw e
    
    sh 'exit 1'
}
    stage ('Find node name') {



echo "NODE_NAME = ${env.NODE_NAME}"
       

    }}
