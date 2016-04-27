#! /usr/bin/perl
package images::jwilder::docker_register;

use strict;
use warnings;

sub name() {
	return "jwilder/docker-register";
}

sub rank() {
	return 121;
}

sub link() {
}

sub run() {
	return "docker run -d -e HOST_IP=1.2.3.4 -e ETCD_HOST=1.2.3.4:4001 -v /var/run/docker.sock -t jwilder/docker-register";
}

1;


