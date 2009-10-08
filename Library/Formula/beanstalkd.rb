require 'brewkit'

class Beanstalkd <Formula
  url 'http://xph.us/dist/beanstalkd/beanstalkd-1.4.tar.gz'
  homepage 'http://xph.us/software/beanstalkd/'
  md5 'eea47c86c722c4448087fb28be7357cd'

  depends_on 'libevent'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
#   system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
