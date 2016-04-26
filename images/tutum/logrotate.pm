#! /usr/bin/perl
package images::tutum::logrotate;

use strict;
use warnings;

sub name() {
	return "tutum/logrotate";
}

sub rank() {
	return 82;
}

sub link() {
}

sub run() {
	return "docker run -d tutum/logrotate";
}

1;


