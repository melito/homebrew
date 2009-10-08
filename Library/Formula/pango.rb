require 'brewkit'

class Pango <Formula
  url 'http://ftp.acc.umu.se/pub/GNOME/sources/pango/1.17/pango-1.17.5.tar.gz'
  homepage 'http://www.pango.org/'
  md5 '1d60aeea73c47d93e4af0cc9d583b597'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
