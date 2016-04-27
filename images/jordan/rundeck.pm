#! /usr/bin/perl
package images::jordan::rundeck;

use strict;
use warnings;

sub name() {
	return "jordan/rundeck";
}

sub rank() {
	return 164;
}

sub link() {
}

sub run() {
	return "docker run -d jordan/rundeck";
}

1;


