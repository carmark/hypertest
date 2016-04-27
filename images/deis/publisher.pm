#! /usr/bin/perl
package images::deis::publisher;

use strict;
use warnings;

sub name() {
	return "deis/publisher";
}

sub rank() {
	return 127;
}

sub link() {
}

sub run() {
	return "docker run -d -v /tmp/docker.sock deis/publisher --etcd-host=192.168.0.1 --host=192.168.0.1";
}

1;


