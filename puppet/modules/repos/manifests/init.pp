class repos {

    yumrepo { "epel-repo":
        baseurl => "http://download.fedoraproject.org/pub/epel/6/\$basearch",
        descr => "Epel Repo",
        enabled => 1,
        gpgcheck => 0,
    }

    yumrepo   { "remi-repo":
        baseurl => "http://rpms.famillecollet.com/enterprise/6/remi/\$basearch/",
        descr => "Les RPM de remi pour Enterprise Linux 6",
        enabled => 1,
        gpgcheck => 0,
    }

}