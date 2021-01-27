class docker::files {
  file {'/home/ubuntu/addressbook.war':
      ensure  => present,
      mode    => '0777',
      source  => "puppet:///modules/docker/addressbook.war"
  }
  file {'/home/ubuntu/Dockerfile':
      ensure  => present,
      mode    => '0777',
      source  => "puppet:///modules/docker/Dockerfile"
   }
   exec {'build_dockerfile':
        command => "/usr/bin/docker build -t edureka/new '/home/ubuntu/'"
        }
   exec {'run_docker':
        command => "/usr/bin/docker run -it -d -p 8091:8080 edureka/new"
   }
 }
