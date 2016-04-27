#! /usr/bin/perl
package images::flynn::etcd;

use strict;
use warnings;

sub name() {
	return "flynn/etcd";
}

sub rank() {
	return 158;
}

sub link() {
}

sub run() {
	return "docker run -d flynn/etcd";
}

1;


