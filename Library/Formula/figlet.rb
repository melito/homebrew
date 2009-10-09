require 'brewkit'

class Figlet <Formula
  url 'ftp://ftp.figlet.org/pub/figlet/program/unix/figlet222.tar.gz'
  homepage 'http://www.figlet.org/'
  md5 '5f84ad52d092d5db4ad5916df767646b'

  def destination_dir
    [prefix, 'bin'].join("/")    
  end

  def man_dir
    [prefix, "man"].join("/")    
  end

  def font_dir
    [prefix, "share", "fonts"].join("/")
  end
   
  def install
    system "make figlet DEFAULTFONTDIR=#{font_dir}"
    system "mkdir #{destination_dir}"
    system "make install DESTDIR=#{destination_dir} DEFAULTFONTDIR=#{font_dir} MANDIR=#{man_dir}"
  end
  
end
