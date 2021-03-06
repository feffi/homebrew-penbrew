require "formula"

class Responder < Formula
  homepage "https://github.com/lgandx/Responder"
  head "https://github.com/lgandx/Responder", :using => :git
  url "https://github.com/lgandx/Responder", :using => :git, :revision => "2a80c7e"
  version "2.3.3.6"
  revision 3

  #depends_on :python
  depends_on "openssl"
  depends_on "libffi"

  resource "pycrypto" do
    url "https://pypi.python.org/packages/60/db/645aa9af249f059cc3a368b118de33889219e0362141e75d4eaf6f80f163/pycrypto-2.6.1.tar.gz"
    sha256 "f2ce1e989b272cfcb677616763e0a2e7ec659effa67a88aa92b3a65528f60a3c"
  end

  resource "pyopenssl" do
    url "https://pypi.python.org/packages/77/f2/bccec75ca4280a9fa762a90a1b8b152a22eac5d9c726d7da1fcbfe0a20e6/pyOpenSSL-16.0.0.tar.gz"
    sha256 "363d10ee43d062285facf4e465f4f5163f9f702f9134f0a5896f134cbb92d17d"
  end

  # required by pyopenssl
  resource "cryptography" do
    url "https://pypi.python.org/packages/92/ea/e7d512719dcc672ce7ed5d70f188e45e329c4bcf7c94528fbc7efa138d8a/cryptography-1.3.1.tar.gz"
    sha256 "b4b36175e0f95ddc88435c26dbe3397edce48e2ff5fe41d504cdb3beddcd53e2"
  end

  # required by cryptography -> pyopenssl
  resource "idna" do
    url "https://pypi.python.org/packages/fb/84/8c27516fbaa8147acd2e431086b473c453c428e24e8fb99a1d89ce381851/idna-2.1.tar.gz"
    sha256 "ed36f281aebf3cd0797f163bb165d84c31507cedd15928b095b1675e2d04c676"
  end

  # required by cryptography -> pyopenssl
  resource "enum34" do
    url "https://pypi.python.org/packages/eb/c2/ea4077a72a167fb75f38bac63801910dfa2d5083e23ddaa0c4062848f78c/enum34-1.1.4.tar.gz"
    sha256 "0efc3e3ee0cb7cc12ea9e4813cdf1154f69ab47e518f4924fbd9e238df41d628"
  end

  # required by cryptography -> pyopenssl
  resource "ipaddress" do
    url "https://pypi.python.org/packages/cd/c5/bd44885274379121507870d4abfe7ba908326cf7bfd50a48d9d6ae091c0d/ipaddress-1.0.16.tar.gz"
    sha256 "5a3182b322a706525c46282ca6f064d27a02cffbd449f9f47416f1dc96aa71b0"
  end

  # required by cryptography -> pyopenssl
  resource "cffi" do
    url "https://pypi.python.org/packages/b6/98/11feff87072e2e640fb8320712b781eccdef05d588618915236b32289d5a/cffi-1.6.0.tar.gz"
    sha256 "a7f75c4ef2362c0a0e54657add0a6c509fecbfa3b3807bc0925f5cb1c9f927db"
  end

  # required by cryptography -> pyopenssl
  resource "six" do
    url "https://pypi.python.org/packages/b3/b2/238e2590826bfdd113244a40d9d3eb26918bd798fc187e2360a8367068db/six-1.10.0.tar.gz"
    sha256 "105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a"
  end

  # required by cffi -> cryptography -> pyopenssl
  resource "pycparser" do
    url "https://pypi.python.org/packages/6d/31/666614af3db0acf377876d48688c5d334b6e493b96d21aa7d332169bee50/pycparser-2.14.tar.gz"
    sha256 "7959b4a74abdc27b312fed1c21e6caf9309ce0b29ea86b591fd2e99ecdf27f73"
  end

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python2.7/site-packages"

    res =  %w[pycrypto pyopenssl cryptography idna enum34 ipaddress cffi six pycparser]
    res.each do |r|
      resource(r).stage do
        system "python", *Language::Python.setup_install_args(libexec/"vendor")
      end
    end

    # Save logs to current working dir and not in responder libexec directory
    inreplace "settings.py", "self.LogDir = os.path.join(self.ResponderPATH, 'logs')", "self.LogDir = '.'"
    # OpenSSL now disables SSLv3 by default, as such the HTTPS server will not run, so let's use TLS instead
    #inreplace "servers/HTTP.py", "ctx = SSL.Context(SSL.SSLv3_METHOD)", "ctx = SSL.Context(SSL.TLSv1_METHOD)"

    libexec.install Dir["*"]
    (bin/"Responder.py").write <<-EOS.undent
      #!/bin/sh
      PYTHONPATH=#{ENV["PYTHONPATH"]} python #{libexec}/Responder.py "$@"
    EOS
    (bin/"MultiRelay.py").write <<-EOS.undent
      #!/bin/sh
      PYTHONPATH=#{ENV["PYTHONPATH"]} python #{libexec}/tools/MultiRelay.py "$@"
    EOS
    (bin/"RunFinger.py").write <<-EOS.undent
      #!/bin/sh
      PYTHONPATH=#{ENV["PYTHONPATH"]} python #{libexec}/tools/RunFinger.py "$@"
    EOS
  end
end
