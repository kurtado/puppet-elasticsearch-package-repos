# Class: elasticsearch-package-repos
#
# Configure Elasticsearch package repos via puppet
#
class elasticsearch-package-repos {
  case $operatingsystem {
    debian, ubuntu: {
    }
    centos, redhat: {
      yumrepo { 'elasticsearchrepo':
        baseurl => 'http://packages.elasticsearch.org/elasticsearch/0.90/centos/',
        descr => 'The elasticsearch.org yum package repository',
        enabled => 1,
        enablegroups => 1,
        gpgcheck => 1,
        gpgkey => 'http://packages.elasticsearch.org/GPG-KEY-elasticsearch'
      }
      yumrepo { 'logstashrepo-1.2':
        baseurl => 'http://packages.elasticsearch.org/logstash/1.2/centos/',
        descr => 'The logstash.net yum package 1.2.x repository',
        enabled => 1,
        enablegroups => 1,
        gpgcheck => 1,
        gpgkey => 'http://packages.elasticsearch.org/GPG-KEY-elasticsearch'
      }
      yumrepo { 'logstashrepo-1.3':
        baseurl => 'http://packages.elasticsearch.org/logstash/1.3/centos/',
        descr => 'The logstash.net yum package 1.3.x repository',
        enabled => 1,
        enablegroups => 1,
        gpgcheck => 1,
        gpgkey => 'http://packages.elasticsearch.org/GPG-KEY-elasticsearch'
      }
    }
  }
}

