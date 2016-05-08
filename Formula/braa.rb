class Braa < Formula
  desc "Braa is a mass snmp scanner."
  homepage "http://s-tech.elsat.net.pl"
  url "http://s-tech.elsat.net.pl/braa/braa-0.82.tar.gz"
  version "0.82"
  sha256 "d650d34cdf30fcbbbbf4e4f11c8f5d51fd5caa3cca58d620fa1d978b8c18919c"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
