#! /usr/bin/perl
package images::mbabineau::cfn_bootstrap;

use strict;
use warnings;

sub name() {
	return "mbabineau/cfn-bootstrap";
}

sub rank() {
	return 1;
}

sub link() {
}

sub run() {
	return "docker run -d mbabineau/cfn-bootstrap";
}

1;


