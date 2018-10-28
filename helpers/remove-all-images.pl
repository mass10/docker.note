#!/usr/bin/env perl
# coding: utf-8

use strict;
use utf8;

sub _remove_image {
	my ($image_id) = @_;
	print('removing ... [', $image_id, ']', "\n");
	system('sudo', 'docker', 'rmi', $image_id);
}

sub _remove_main {
	my $stream = undef;
	open($stream, 'sudo docker images --quiet |');
	while (my $line = <$stream>) {
		$line =~ m/\A([0-9a-zA-Z]+)/ms;
		my $image_id = $1;
		_remove_image($image_id);
	}
	close($stream);
}

sub _main {

	_remove_main();
}

_main();

