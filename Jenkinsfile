node ('master'){

stage( 'source') {


git credentialsId: 'git', url: 'https://github.com/SyamiliV/Devops-project.git'

}


try {

stage ( 'Build') {

def MVN = tool name: 'M2_HOME', type: 'maven'
sh "${MVN}/bin/mvn clean install package"

}}


catch(e) {
    throw e
    
    sh 'exit 1'
}
    stage ('Find node name') {



echo " ${env.NODE_NAME}"
       

    }
 
    stage ( " ALL environmenat veraibbles") {
        
     sh 'printenv'
        echo " tHIS build number is ${env.BUILD_NUMBER}"
        
    }
    
}
