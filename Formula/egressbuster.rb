require "formula"

class Egressbuster < Formula
  homepage "https://github.com/trustedsec/egressbuster"
  url "https://github.com/trustedsec/egressbuster", :using => :git, :revision => "88cd8b9"
  version "0.2.20160316"

  def install
    bin.install "egress_listener.py"
    pkgshare.install Dir["*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end

  def caveats; <<-EOS.undent
    The egressbuster clients (egressbuster.py and egressbuster.exe) can be found in #{HOMEBREW_PREFIX}/share/egressbuster
    EOS
  end
end
