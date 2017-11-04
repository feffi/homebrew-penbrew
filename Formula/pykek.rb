require "formula"

class Pykek < Formula
  homepage "https://github.com/bidord/pykek"
  url "https://github.com/bidord/pykek", :using => :git, :revision => "651b9ba"
  version "0.20141205"

  def install
    (bin/"ms14-068").write <<-EOS.undent
      #!/usr/bin/env bash
      cd #{libexec} && PYTHONPATH=#{ENV["PYTHONPATH"]} python ms14-068.py "$@"
    EOS
    libexec.install Dir["*"]
  end
end
