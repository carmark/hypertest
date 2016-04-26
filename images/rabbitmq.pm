#! /usr/bin/perl
package images::rabbitmq;

use strict;
use warnings;

sub name() {
	return "rabbitmq";
}

sub rank() {
	return 67;
}

sub link() {
}

sub run() {
	return "docker run -d --hostname my-rabbit --name some-rabbit rabbitmq:3";
}

1;


