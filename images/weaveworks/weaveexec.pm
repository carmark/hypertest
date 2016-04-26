#! /usr/bin/perl
package images::weaveworks::weaveexec;

use strict;
use warnings;

sub name() {
	return "weaveworks/weaveexec";
}

sub rank() {
	return 70;
}

sub link() {
}

sub run() {
	return "docker run -d weaveworks/weaveexec";
}

1;


