#!/usr/bin/perl
#use Unicode::String qw(utf8 latin1 utf16be);
use Tkx;
use utf8;
use Encode qw(encode decode);

($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=localtime(time);

my @abbr = qw( января февраля марта апреля мая июня июля августа сентября октября ноября декабря );

my @dayabbr = (1..31);

my $dat= "$dayabbr[$mday-1] $abbr[$mon]";

my $filename = "cal_primet.txt";
open(my $fh, '<:encoding(UTF-8)', $filename)
or die "Could not open file '$filename' $!";

while (my $row = <$fh>) {
chomp $row;
 if ($row=~/^$dat/) {

my $mw = Tkx::widget->new(".");
 #$mw->g_wm_title(".");
 $mw->g_wm_minsize(0, 0);

# my $lf = $mw->new_ttk__labelframe(
# -text => "Народные приметы",
# -labelanchor => 'nw',
# -relief => 'groove',
# -borderwidth => '5'
# );
#
# $lf->new_label(-text => $row)->g_pack;
#
# $lf->g_pack(-padx =>100 , -pady =>200 , );

 Tkx::tk___messageBox(
-parent => $mw,
 -icon => "info",
 -title => "Народные приметы",
 -message => $row,
 );

 Tkx::MainLoop;
 }
}
close (HANDLE);