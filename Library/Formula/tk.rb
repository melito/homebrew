require 'brewkit'

class Tk <Formula
  url 'cvs://:pserver:anonymous@tktoolkit.cvs.sourceforge.net:/cvsroot/tktoolkit:tk'
  homepage 'http://www.tcl.tk/'
  version '8.6'

  depends_on 'tcl'

  def install
    system "./unix/configure", "--prefix=#{prefix}", 
                               "--disable-debug", 
                               "--disable-dependency-tracking",
                               "--enable-shared"
    system "make install"
  end
end
