#! /usr/bin/perl
package images::asher::remote_syslog;

use strict;
use warnings;

sub name() {
	return "asher/remote_syslog";
}

sub rank() {
	return 176;
}

sub link() {
}

sub run() {
	return "docker run -d asher/remote_syslog";
}

1;


