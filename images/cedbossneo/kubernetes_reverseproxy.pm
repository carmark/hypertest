#! /usr/bin/perl
package images::cedbossneo::kubernetes_reverseproxy;

use strict;
use warnings;

sub name() {
	return "cedbossneo/kubernetes-reverseproxy";
}

sub rank() {
	return 139;
}

sub link() {
}

sub run() {
	return "docker run -d cedbossneo/kubernetes-reverseproxy";
}

1;


