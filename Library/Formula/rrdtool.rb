require 'brewkit'

class Rrdtool <Formula
  url 'http://oss.oetiker.ch/rrdtool/pub/rrdtool-1.3.8.tar.gz'
  homepage 'http://oss.oetiker.ch/rrdtool/'
  md5 '0de79494ab969cebfbfae3d237de18fe'

 depends_on 'gettext', 'pango'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
