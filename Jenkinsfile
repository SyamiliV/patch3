node {
    
stage ('source') {
    
    git 'https://github.com/SyamiliV/Devops-project.git'
}
stage ('build') {
    
    def maven_home = tool name: 'M2_HOME', type: 'maven'
    sh "${maven_home}/bin/mvn clean install package"
    
}
    
stage ( 'Push war file to docker server') { 	
	
	
sshPublisher(publishers: [sshPublisherDesc(configName: 'dockerserver', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '.', remoteDirectorySDF: false, removePrefix: '/webapp/target', sourceFiles: '/opt/git/sam/Devops-project/webapp/target/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])	
	
	
	
	
	
}}	
