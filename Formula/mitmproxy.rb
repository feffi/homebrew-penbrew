class Mitmproxy < Formula
  homepage "http://mitmproxy.org/"
  url "http://mitmproxy.org/download/osx-mitmproxy-0.11.3.tar.gz"
  sha256 "fd2dbd1fd5c69eeee1bea60d222eba8d5271a112a33df39cf053365b9e94d288"

  def install
    bin.install "mitmdump"
    bin.install "mitmproxy"
    prefix.install "doc"
  end
end
