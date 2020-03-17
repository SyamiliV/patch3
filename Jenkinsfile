node {
    
stage ('source') {
    
    git 'https://github.com/SyamiliV/Devops-project.git'
}
stage ('build') {
    
    def maven_home = tool name: 'M2_HOME', type: 'maven'
    sh "${maven_home}/bin/mvn clean install package"
    
}
    stage ( 'Docker build and deploy' ) { 
        
sshPublisher(publishers: [sshPublisherDesc(configName: 'dockerhost1', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'cd /home/dockerdeploy/webapp/target;docker stop "dockercontainers";docker rm "dockercontainers";docker rmi -f dockerimage;docker build -t dockerimage .;docker run -it -d --name "dockercontainers" -p 8080:8080 dockerimage', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '.', remoteDirectorySDF: false, removePrefix: '', sourceFiles: 'webapp/target/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])    
    }
}
