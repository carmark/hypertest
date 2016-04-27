#! /usr/bin/perl
package images::oberthur::jenkins_slave_android;

use strict;
use warnings;

sub name() {
	return "oberthur/jenkins-slave-android";
}

sub rank() {
	return 196;
}

sub link() {
}

sub run() {
	return "docker run -d oberthur/jenkins-slave-android";
}

1;


