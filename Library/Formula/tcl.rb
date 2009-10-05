require 'brewkit'

class Tcl <Formula
  url 'cvs://:pserver:anonymous@tcl.cvs.sourceforge.net:/cvsroot/tcl:tcl'
  homepage 'http://www.tcl.tk/'
  version '8.6'

  def install
    system "./unix/configure",  "--prefix=#{prefix}", 
                                "--disable-debug", 
                                "--disable-dependency-tracking",
                                "--enable-threads",
                                "--enable-shared",
                                "--enable-symbols"
                                
    system "make install"
  end
end
