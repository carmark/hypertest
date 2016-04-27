#! /usr/bin/perl
package images::mbabineau::zookeeper_exhibitor;

use strict;
use warnings;

sub name() {
	return "mbabineau/zookeeper-exhibitor";
}

sub rank() {
	return 194;
}

sub link() {
}

sub run() {
	return "docker run -d mbabineau/zookeeper-exhibitor";
}

1;


