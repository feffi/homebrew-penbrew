require "formula"

class RobotsDisallowed < Formula
  homepage "https://github.com/danielmiessler/RobotsDisallowed"
  url "https://github.com/danielmiessler/RobotsDisallowed", :using => :git, :revision => "4f7d92f"
  head "https://github.com/danielmiessler/RobotsDisallowed", :using => :git, :branch => "master"
  version "0.20171007"

  def install
    pkgshare.install Dir["*"]
  end

  def caveats; <<-EOS.undent
    The RobotsDisallowed lists can be found in #{HOMEBREW_PREFIX}/share/robots_disallowed
    EOS
  end
end
