node{
  stage('Git Checkout'){
      git url: 'https://github.com/prasenforu/dockerapp',
          branch:'master'
  }
  stage('Build Docker Image'){
    sh 'docker build -t ocp-dev/my-app:0.0.1 .'
  }

  stage('Upload Image to DockerHub'){
    withCredentials([string(credentialsId: 'docker-hub', variable: 'password')]) {
      sh "docker login 10.90.1.78 -u prasen -p ${password}"
    }
    sh 'docker push ocp-dev/my-app:0.0.1'
  }
  stage('Remove Old Containers'){
    sshagent(['my-app-dev']) {
      try{
        def sshCmd = 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.18.198'
        def dockerRM = 'docker rm -f my-app'
        sh "${sshCmd} ${dockerRM}"
      }catch(error){

      }
    }
  }
  stage('Deploy-Dev'){
    sshagent(['my-app-dev']) {
      input 'Deploy  to Dev?'
      def sshCmd = 'ssh -o StrictHostKeyChecking=no ec2-user@172.31.18.198'
      def dockerRun = 'docker run -d -p 8080:8080 --name my-app kammana/my-app:0.0.1'
      sh "${sshCmd} ${dockerRun}"
    }
  }
}
