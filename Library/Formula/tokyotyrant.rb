require 'formula'

class Tokyotyrant <Formula
  # For some reason the latest release of TT (1.1.36) wouldn't compile against the existing TC formula (1.4.33)
  url 'http://1978th.net/tokyotyrant/pastpkg/tokyotyrant-1.0.1.tar.gz'
  homepage 'http://1978th.net/tokyotyrant/'
  md5 'd3d8a9847e2d20ac49129362d55078cf'

 depends_on 'tokyo-cabinet'
 depends_on 'lua'

  def install
    system "./configure", "--prefix=#{prefix}", 
                          "--disable-debug", 
                          "--disable-dependency-tracking",
                          "--enable-lua",
                          "--with-tc=#{HOMEBREW_PREFIX}/lib"
    system "make"
    system "make install"
  end
end
