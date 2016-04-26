#! /usr/bin/perl
package images::weaveworks::weave;

use strict;
use warnings;

sub name() {
	return "weaveworks/weave";
}

sub rank() {
	return 72;
}

sub link() {
}

sub run() {
	return "docker run -d weaveworks/weave";
}

1;


