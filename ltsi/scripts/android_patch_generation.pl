#!/usr/bin/perl -w



$start = shift;
$end = shift;

if (($start eq "") || ($end eq "")) {
	print "Error, must provide 2 git ids to generate patches between\n";
	die;
}

open GIT, "git rev-list --no-merges --reverse $start..$end drivers/staging/android/ | " || die "can't run git";

my $commit;
my $patch_num = 0;
my $patch_string;
my $git_filename;
my $filename;
my $line;


while (<GIT>) {
	my $header_complete = "false";
	$patch_num++;
	$patch_string = sprintf("%.4d", $patch_num);
	my @arr = split;
	$commit = $arr[0];

	$git_filename = `git show --pretty=format:%f $commit | head -n 1`;
	chomp($git_filename);

	$filename = sprintf("android-%.4d-%.60s.patch", $patch_num, $git_filename);

	open FILE, ">$filename" || die "Failed to create $filename";
	print "$filename\n";

	open PATCH, "git show --pretty=email $commit |" || die "Could not get commit $commit";
	while ($line = <PATCH>) {
		$line =~ s/^Subject: \[PATCH\]/Subject:/;

		if ($header_complete eq "false") {
			if ($line eq "\n") {
				print FILE "Patch-mainline: $end\n";
				print FILE "Git-commit: $commit\n";
				$header_complete = "true";
			}
		}
		print FILE $line;
	}
	close PATCH;
	close FILE;
}
