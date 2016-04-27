#! /usr/bin/perl
package images::rails;

use strict;
use warnings;

sub name() {
	return "rails";
}

sub rank() {
	return 170;
}

sub link() {
}

sub run() {
	return "docker run --name some-rails-app  -d rails rails -v";
}

1;


