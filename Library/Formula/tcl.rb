require 'brewkit'

class Tcl <Formula
  url 'cvs://:pserver:anonymous@tcl.cvs.sourceforge.net:/cvsroot/tcl:tcl'
  homepage 'http://www.tcl.tk/'
  version 'core-8-5-7'

  def install
    FileUtils.mkdir("#{HOMEBREW_CACHE}/tcl") rescue puts "tcl build directory already exists"    
    FileUtils.ln_sf("#{HOMEBREW_CACHE}/tcl-core-8-5-7", "#{HOMEBREW_CACHE}/tcl/tcl8.5.7")
    FileUtils.mkdir("#{HOMEBREW_CACHE}/tcl/tcl8.5.7/build")
        
    Dir.chdir("#{HOMEBREW_CACHE}/tcl/tcl8.5.7") do
      system "./unix/configure",  "--prefix=#{prefix}", 
                                      "--disable-debug", 
                                      "--disable-dependency-tracking",
                                      "--enable-threads",
                                      "--enable-shared",
                                      "--enable-symbols"

      system "make install"
    end
    
  end
end
