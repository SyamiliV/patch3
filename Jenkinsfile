node {

stage( 'source') {


git credentialsId: 'git', url: 'https://github.com/SyamiliV/Devops-project.git'

}


try {

stage ( 'Build') {

def MVN = tool name: 'M2_HOME', type: 'maven'
sh "${MVN}/bin/mvn clean install packages"

}}


catch(err) {
    emailext body: "${err}", subject: 'BUILD FAILURE', to: 'syamilivijay@gmail.com'
    
    sh 'exit 1'
}


}
