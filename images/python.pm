#! /usr/bin/perl
package images::python;

use strict;
use warnings;

sub name() {
	return "python";
}

sub rank() {
	return 78;
}

sub link() {
}

sub run() {
	return "docker run -d  --name my-running-script -v /usr/src/myapp -w /usr/src/myapp python:3 python --help";
}

1;


