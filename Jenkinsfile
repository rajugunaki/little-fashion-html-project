pipeline {
    agent { label "projecta" }

    stages {
        stage('Git Clone ') {
            steps {
                git branch: 'main', url: 'https://github.com/vincloud2/Litte_fashion_html_project.git'
            }
        }
        stage('install httpd') {
            steps {
                sh 'yum install httpd -y'
                sh 'systemctl start httpd'
            }
        }        
        stage('Copy project to html path') {
            steps {
                sh 'cd /var/jenkins/workspace/littefashion_html/'
                sh 'ls'
                sh 'cp -r /var/jenkins/workspace/littefashion_html/* /var/www/html/'
            }
        }        
    }
}
