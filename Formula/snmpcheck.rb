require 'formula'

class Snmpcheck < Formula
  homepage 'http://www.nothink.org/codes/snmpcheck/'
  url 'http://www.nothink.org/codes/snmpcheck/snmpcheck-1.8.pl', :using => :nounzip
  sha256 'b07eff2e525f3fc4025224a27ffcd817f7287c35af313381520cc9bfa16807d0'
  version "1.8"
  revision 1

  depends_on "perl"

  resource "Net::SNMP" do
    url "http://search.cpan.org/CPAN/authors/id/D/DT/DTOWN/Net-SNMP-v6.0.1.tar.gz"
    sha256 "14c37bc1cbb3f3cdc7d6c13e0f27a859f14cdcfd5ea54a0467a88bc259b0b741"
  end

  resource "Number::Bytes::Human" do
    url "http://search.cpan.org/CPAN/authors/id/D/DA/DAGOBERT/Number-Bytes-Human-0.09.tar.gz"
    sha256 "eb44c5e1ce9afd47d8c2001e3cc46fd2b014b0be70a9e0f566c209784531702b"
  end

  resource "Time::HiRes" do
    url "http://search.cpan.org/CPAN/authors/id/Z/ZE/ZEFRAM/Time-HiRes-1.9726.tar.gz"
    sha256 "ff662ad9b1f6c75a149db7fa1bfc7a161ac8b271e5f3980345e08b734769109e"
  end

  def install
    ENV.prepend_create_path "PERL5LIB", libexec+"lib/perl5"

    resources.each do |r|
      r.stage do
        system "perl", "Makefile.PL", "INSTALL_BASE=#{libexec}"
        system "make"
        system "make", "install"
      end
    end

    libexec.install "snmpcheck-#{version}.pl"
    (bin/"snmpcheck").write <<-EOS.undent
      #!/bin/sh
      /usr/bin/env perl -I "#{ENV["PERL5LIB"]}" #{libexec}/snmpcheck-#{version}.pl "$@"
    EOS
  end

  test do
    system "#{bin}/snmpcheck.pl"
  end
end
