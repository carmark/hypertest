#! /usr/bin/perl
package images::tenstartups::etcdctl;

use strict;
use warnings;

sub name() {
	return "tenstartups/etcdctl";
}

sub rank() {
	return 86;
}

sub link() {
}

sub run() {
	return "docker run -d tenstartups/etcdctl";
}

1;


