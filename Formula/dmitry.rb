require 'formula'

class Dmitry < Formula
  homepage 'http://mor-pah.net/software/dmitry-deepmagic-information-gathering-tool/'
  url 'http://dl.packetstormsecurity.net/UNIX/misc/DMitry-1.3a.tar.gz'
  version '1.3a'
  sha256 'f335321a092cdc708f3222ce732299289b799602076f22e1942ed152b0f17e43'

  def install
    system "./configure", "--mandir=#{man}", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
