require 'formula'

class Libzip <Formula
  url 'http://nih.at/libzip/libzip-0.9.tar.gz'
  homepage 'http://nih.at/libzip/'
  md5 '5b753dfe336f6fe87b0e698b382c3071'


  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
