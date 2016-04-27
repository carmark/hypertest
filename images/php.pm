#! /usr/bin/perl
package images::php;

use strict;
use warnings;

sub name() {
	return "php";
}

sub rank() {
	return 105;
}

sub link() {
}

sub run() {
	return "docker run -d  --name my-running-script -v /usr/src/myapp -w /usr/src/myapp php php --help";
}

1;


