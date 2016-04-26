#! /usr/bin/perl
package images::monsantoco::etcd_aws_cluster;

use strict;
use warnings;

sub name() {
	return "monsantoco/etcd-aws-cluster";
}

sub rank() {
	return 88;
}

sub link() {
}

sub run() {
	return "docker run -d monsantoco/etcd-aws-cluster";
}

1;


