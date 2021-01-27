file {'/tmp/it_work.txt':
  ensure => present,
  mode => '0644',
  content =>"it is working ${ipaddress_eth0}!\n"
}


node default{
  package {'nginx':
  ensure => installed,
}
file {'/tmp/status.txt':
    content => 'Nginx installed',
    mode => '0644',
  }
}
