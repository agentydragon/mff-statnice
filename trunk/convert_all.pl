use warnings;
use strict;


for my $name (<*.tex>) {
	print "PRED $name\n";
	my $enc = `enca -L czech $name`;
	print $name."\n";
	if ($enc=~/UTF-8/) {
		print "YEAH!\n";
		system("iconv -f \"utf8\" -t \"cp1250\" $name -o $name");
		print "ICONV DONE\n";
	}
	system("cat $name | perl -na ../../../zmen_enviromenty.pl > $name"."_mv");
	system("mv $name"."_mv $name");
	print "CAT DONE\n";
	#sleep(3);
}
