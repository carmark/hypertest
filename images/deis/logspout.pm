#! /usr/bin/perl
package images::deis::logspout;

use strict;
use warnings;

sub name() {
	return "deis/logspout";
}

sub rank() {
	return 116;
}

sub link() {
}

sub run() {
	return "docker run -v=/var/run/docker.sock:/tmp/docker.sock deis/logspout /bin/logspout syslog://logs.papertrailapp.com:55555";
}

1;


