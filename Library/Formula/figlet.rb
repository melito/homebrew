require 'brewkit'

class Figlet <Formula
  url 'ftp://ftp.figlet.org/pub/figlet/program/unix/figlet222.tar.gz'
  homepage 'http://www.figlet.org/'
  md5 '5f84ad52d092d5db4ad5916df767646b'

  def font_dir
    [HOMEBREW_PREFIX, "share", "fonts"].join("/")
  end

  def install
    system "make figlet"
    system "make install DESTDIR=#{prefix} DEFAULTFONTDIR=#{font_dir}"
  end
  
end
