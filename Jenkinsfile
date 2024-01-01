pipeline {
    agent { label "projecta" }

    stages {
        stage('Git Clone ') {
            steps {
                git branch: 'main', url: 'https://github.com/rajugunaki/little-fashion-html-project.git'
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
                sh 'cd  /var/jenkins/workspace/little_fashion_html/'
                sh 'ls'
                sh 'cp -r  /var/jenkins/workspace/little_fashion_html/* /var/www/html/'
            }
        }        
    }
}
