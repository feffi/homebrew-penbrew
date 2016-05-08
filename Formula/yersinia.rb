class Yersinia < Formula
  desc "Yersinia is a network tool designed to take advantage of some weakeness in different network protocols."
  homepage "http://www.yersinia.net"
  url "http://www.yersinia.net/download/yersinia-0.7.tar.gz"
  version "0.7"
  sha256 "0a82b904991ee1ecbbeb0a19ca3c3261f4014170a5c50a7fcd5be9af5e30a029"

  depends_on 'libnet'
  depends_on 'libpcap'

  def install
    system "./configure", "--with-libnet-includes=/usr/local/include/",
    "--disable-gtk",
    "--with-pcap-includes=/usr/local/include",
    "--prefix=#{prefix}"
    system "make"
    system "make install" # if this fails, try separate make/make install steps
  end
end
