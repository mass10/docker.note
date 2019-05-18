#!/usr/bin/env perl
# coding: utf-8

use strict;
use utf8;

sub _println {

	print(@_, "\n");
}

sub _main {

	_println('Hello Docker + Perl World!');
}

_main(@ARGV);
