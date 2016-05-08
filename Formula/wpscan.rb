class Wpscan < Formula
  desc "Yersinia is a network tool designed to take advantage of some weakeness in different network protocols."
  homepage "http://wpscan.org"
  head "https://github.com/wpscanteam/wpscan.git"

  depends_on "git"
  depends_on "curl"
  depends_on 'rbenv'
  depends_on 'ruby-build'
  depends_on 'rbenv-bundle-exec'
  depends_on 'rbenv-bundler-ruby-version'
  depends_on 'cmake'
  depends_on :ruby => ["2.3.0"]
  #depends_on "bundler" => :ruby
  #depends_on "typhoeus" => :ruby
  #depends_on "nokogiri" => :ruby
  #depends_on "addressable" => :ruby
  #depends_on "yajl-ruby" => :ruby
  #depends_on "terminal-table" => :ruby
  #depends_on "ruby-progressbar" => :ruby

  def install
    system "cd", buildpath
    #system "bundle", "install"
    puts "Press ENTER to send SIGUSR1 to child"
    STDIN.gets
  end

  def test

  end
end
