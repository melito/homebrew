require 'brewkit'

class ClassDump <Formula
  url 'http://www.codethecode.com/download/class-dump-3.3.1.tar.gz'
  homepage 'http://www.codethecode.com/projects/class-dump/'
  md5 '9b20695f9c10ae5dcaf22518ef8c290b'

  def install
    system "mkdir #{prefix}/bin"
    system "cp class-dump #{prefix}/bin/"
  end
end
