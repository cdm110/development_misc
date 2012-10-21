#
#   Circle.pm produces a <circle> element.
#   Inkscape seems to be not very happy with <circle> elements. The arc-Tool
#   will produce a <path> element.
#
#   But inkscape _can_ handle (that is: read) circle elements.
#
use warnings;
use strict;

package Circle;

my $id=1;

sub new {
  my $self = {};
  bless $self, shift;

  $self->{x} = shift;
  $self->{y} = shift;
  $self->{r} = shift;

  return $self;
}

sub style {
  my $self       = shift;
  my $style_text = shift;

  Inkscape::style_($self, $style_text);
}

sub write {

  my $self    = shift;
  my $svgFile = shift;

  print $svgFile "    <circle\n";
  print $svgFile "       id=\"circle1\"\n";
  print $svgFile "       cx=\"$self->{x}\"\n";
  print $svgFile "       cy=\"$self->{y}\"\n";
  print $svgFile "       r=\"$self->{r}\"\n";
  print $svgFile "       sodipodi:cx=\"$self->{x}\"\n";
  print $svgFile "       sodipodi:cy=\"$self->{y}\"\n";
  print $svgFile "       sodipodi:rx=\"$self->{r}\"\n";
  print $svgFile "       sodipodi:ry=\"$self->{r}\"\n";
  print $svgFile "       style=\"stroke:#880000;stroke-opacity:1;fill:#00d400;fill-opacity:1\" />\n";
}

1;