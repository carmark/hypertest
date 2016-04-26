#! /usr/bin/perl
package images::kubernetes::fluentd_elasticsearch;

use strict;
use warnings;

sub name() {
	return "kubernetes/fluentd-elasticsearch";
}

sub rank() {
	return 100;
}

sub link() {
}

sub run() {
	return "docker run -d kubernetes/fluentd-elasticsearch";
}

1;


