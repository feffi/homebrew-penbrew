require "formula"

class Commix < Formula
  homepage "https://github.com/commixproject/commix"
  url "https://github.com/commixproject/commix", :using => :git, :revision => "ca0227d"
  version "2.1-20171003"

  def install
    (bin/"commix.py").write <<-EOS.undent
      #!/usr/bin/env bash
      cd #{libexec} && PYTHONPATH=#{ENV["PYTHONPATH"]} python commix.py "$@"
    EOS
    libexec.install Dir['*']
  end
end
