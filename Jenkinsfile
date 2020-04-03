node {
options {
        timeout(time: 1, unit: 'SECONDS') 
    }
try
{
    
stage ('source') {
    
    git 'https://github.com/SyamiliV/Devops-project.git'
}
stage ('build') {
    
    def maven_home = tool name: 'M2_HOME', type: 'maven'
    sh "${maven_home}/bin/mvn clean install package"
    
}}

catch(err)
{
emailext body: "${err}", subject: 'build failed', to: 'syamilivijay@gmail.com'
sh 'exit 1'

}
    

 
stage ( 'Push war file to docker server  ') { 	
	
	
sshPublisher(publishers: [sshPublisherDesc(configName: 'dockerserver', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '.', remoteDirectorySDF: false, removePrefix: '/webapp/target', sourceFiles: '**/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])	
}
stage ( 'Docker build and deploy' ) { 
        
    sshPublisher(publishers: [sshPublisherDesc(configName: 'dockerserver', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'docker stop "dockercontainers";docker rm "dockercontainers";docker rmi -f dockerimage;docker build -t dockerimage .;docker run -it -d --name "dockercontainers" -p 8888:8080 dockerimage', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '.', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])    
        

}
}
