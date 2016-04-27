#! /usr/bin/perl
package images::openshift::origin_pod;

use strict;
use warnings;

sub name() {
	return "openshift/origin-pod";
}

sub rank() {
	return 118;
}

sub link() {
}

sub run() {
	return "docker run -d openshift/origin-pod";
}

1;


