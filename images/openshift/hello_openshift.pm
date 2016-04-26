#! /usr/bin/perl
package images::openshift::hello_openshift;

use strict;
use warnings;

sub name() {
	return "openshift/hello-openshift";
}

sub rank() {
	return 5;
}

sub link() {
}

sub run() {
	return "docker run -d openshift/hello-openshift";
}

1;


