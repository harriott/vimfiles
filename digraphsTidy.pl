#!/usr/bin/perl

# --------------------------------------------------------------------
# save digraphs in Vim:
#  :redir @d | silent digraphs! | redir END | new | exe "normal! \"dp"
#  :saveas! $vimfiles/digraphs.txt
# then  perl digraphsTidy.pl
# --------------------------------------------------------------------

use feature 'say';
use strict;  use warnings;
use Tie::File;  # on MSWin requires  fileformat=dos
use Data::Printer;

# grab the lines of the digraphs save:
tie my @dgs, 'Tie::File', "digraphs.txt" or die "Can't read file: $!\n";
# print join("\n",@dgs),"\n";
# p @dgs; # Data::Printer
# exit;
# say scalar @dgs;  # number of elements

my $dgsLine;
my @dgsave = @dgs;
my @workspace;
shift @dgs;  # clear off the empty top line
while (@dgs) {
  # Mark out headings:
  $dgsLine = shift @dgs;
  if ($dgsLine =~ s/^(\S\S\S.*)/¬¬# $1¬¬/ ) {
    $dgsLine =~ s/ /__/g;  # mark out wanted spaces
    $dgsLine .= " ¬¬¬ ¬¬¬¬";  # dummies
  }
  push @workspace, $dgsLine;
}
my $all = join ( ' ', @workspace );
$all =~ s/ +/ /g;  # remove unwanted extra spacing
# Fix a few Vim formatting errors:
  $all =~ s/10003XX/10003 XX/;
  $all =~ s/10007-X/10007 -X/;
  $all =~ s/64256fi/64256 fi/;
  $all =~ s/64257fl/64257 fl/;
  $all =~ s/64258ft/64258 ft/;
  $all =~ s/64261st/64261 st/;
my @all = split(' ', $all);
# Move  @all  back into  @workspace, removing Unicode numbers
@workspace = ();
for (my $i = 2; $i <= $#all; $i += 3) {
  if ($all[$i-2] eq 'SP') {
    push @workspace, "$all[$i-2]   ``";
    $i -= 1;
  } else {
    push @workspace, "$all[$i-2] $all[$i-1] ``"
  } # using  ``  as a non-intrusive separator between digraphs
}
$all = join ( ' ', @workspace );
# Tidy up:
  $all = '`` '.$all;
  $all =~ s/ `` ¬¬#__/¬¬# /g;  # start of a heading
  $all =~ s/ ¬¬¬ //g;  # end of a heading
  $all =~ s/__/ /g;  # recover wanted spaces
  $all =~ s/ ``$//g;  # end of file

@dgs = split('¬¬', $all);
unshift @dgs, '';
unshift @dgs, 'vim: ft=digraphs:';
untie @dgs;  # put the tidied array back into  digraphs.txt

