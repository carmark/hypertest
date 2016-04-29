#! /usr/bin/perl
package images::kylemanna::openvpn;

use strict;
use warnings;

sub name() {
	return "kylemanna/openvpn";
}

sub rank() {
	return 174;
}

sub link() {
}

sub run() {
	return "docker run -d kylemanna/openvpn";
}

1;


