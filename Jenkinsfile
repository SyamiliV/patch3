node {

stage( 'source') {


git credentialsId: 'git', url: 'https://github.com/SyamiliV/Devops-project.git'

}


try {

stage ( 'Build') {

def MVN = tool name: 'M2_HOME', type: 'maven'
sh "${MVN}/bin/mvn clean install package"

}}


catch(err) {
    emailext body: "${err}", subject: 'BUILD FAILURE', to: 'syamilivijay@gmail.com'
    
    sh 'exit 1'
}
    stage ('Find node name') {



def NODE_NAME = ${env.NODE_NAME}"
        sh "echo ${NODE_NAME}"

    }}
