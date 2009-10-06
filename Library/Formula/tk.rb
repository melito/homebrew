require 'brewkit'

class Tk <Formula
  url 'cvs://:pserver:anonymous@tktoolkit.cvs.sourceforge.net:/cvsroot/tktoolkit:tk'
  homepage 'http://www.tcl.tk/'
  version 'core-8-5-7'

  depends_on 'tcl'

  def install
    FileUtils.ln_sf("#{HOMEBREW_CACHE}/tk-core-8-5-7", "#{HOMEBREW_CACHE}/tcl/tk8.5.7")
    
    Dir.chdir("#{HOMEBREW_CACHE}/tcl/tk8.5.7/unix") do
      system "./configure",  "--prefix=#{prefix}", 
                             "--disable-debug", 
                             "--disable-dependency-tracking",
                             "--with-tcl=#{prefix}/../../tcl/core-8-5-7/lib"
      system "make install"
    end
  end
end
