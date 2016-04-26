#! /usr/bin/perl
package images::logstash;

use strict;
use warnings;

sub name() {
	return "logstash";
}

sub rank() {
	return 66;
}

sub link() {
}

sub run() {
	return "docker run -d  logstash logstash -e 'input { stdin { } } output { stdout { } }'";
}

1;


