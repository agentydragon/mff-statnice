my %changesNotNamed=(
	"pozadavky"=>"{Poadavky}{0}{0}",	
	"poziadavky"=>"{Poadavky}{0}{0}",
	"definiceSkull"=>"{Definice}{1}{0}",	
	"definice"=>"{Definice}{0}{0}",
	"definicia"=>"{Definice}{0}{0}",
	"vetaSkull"=>"{Veta}{1}{0}",
	"pozorovani"=>"{Pozorování}{0}{0}",
	"pozorovanie"=>"{Pozorování}{0}{0}",
	"poznamka"=>"{Poznámka}{0}{0}",
	"lemma"=>"{Lemma}{0}{0}",
	"vetaSK"=>"{Vìta}{0}{0}",
	"dusledek"=>"{Dùsledek}{0}{0}",
	"dusledok"=>"{Dùsledek}{0}{0}",
	"dokaz"=>"{Dùkaz}{0}{0}",
	"dukaz"=>"{Dùkaz}{0}{0}",
	"ideadukazu"=>"{Idea dùkazu}{0}{0}",
	"priklad"=>"{Pøíklad}{0}{0}",
	"prikladSK"=>"{Pøíklad}{0}{0}",
	"priklady"=>"{Pøíklady}{0}{0}",
	"prikladySK"=>"{Pøíklady}{0}{0}",
	"veta"=>"{Vìta}{0}{0}"
);

my %changesNamed=(
	"definiceNSkull" => "{Definice}{1}",
	"definiceN"=>"{Definice}{0}",
	"definiaN"=>"{Definice}{0}",
	"vetaNSkull"=>"{Vìta}{1}",
	"poznamkaN"=>"{Poznámka}{0}",
	"vetaN"=>"{Vìta}{0}",
	"vetaSKN"=>"{Vìta}{0}",
	"algoritmusN"=>"{Algoritmus}{0}",
);

use warnings;
use strict;

my $line = $_;

chomp($line);
$line=~s/\r//;

for my $key (keys %changesNotNamed) {
	if ($line=~/\\begin\s*{$key}/) {
		$line=~s/\\begin\s*{[^}]*}/\\begin{e}/;
		$line = $line.$changesNotNamed{$key};
	}
}

for my $key (keys %changesNotNamed, keys %changesNamed) {
	if ($line=~/\\end\s*{$key}/) {
		$line=~s/\\end\s*{[^}]*}/\\end{e}/;
		#$line = $line.$changesNotNamed{$key};
	}
}

for my $key (keys %changesNamed) {
	if ($line=~/\\begin\s*{$key}\s*({.*})/) {
		my $N=$1;
		$line=~s/\\begin\s*{[^}]*}\s*{.*}/\\begin{e}/;
		$line = $line.$changesNamed{$key};
		$line = $line.$N;

	}
}


print $line."\n";

