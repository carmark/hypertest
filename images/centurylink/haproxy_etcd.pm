#! /usr/bin/perl
package images::centurylink::haproxy_etcd;

use strict;
use warnings;

sub name() {
	return "centurylink/haproxy-etcd";
}

sub rank() {
	return 140;
}

sub link() {
}

sub run() {
	return "docker run -d centurylink/haproxy-etcd";
}

1;


