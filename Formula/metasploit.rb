class Metasploit < Formula
  desc "World's most used penetration testing software"
  homepage "https://www.metasploit.com/framework/"
  head "https://github.com/rapid7/metasploit-framework.git"

  depends_on "postgresql" => "without-ossp-uuid"

  skip_clean :all

  def install
    #initdb /usr/local/var/postgres
    #pg_ctl -D /usr/local/var/postgres -l logfile start
    #createuser msf -P -h localhost
    #createdb -O msf msf -h localhost


    libexec.install Dir["msf*",'data','documentation','external','lib','modules','plugins','scripts','test','tools']
    bin.install_symlink Dir["#{libexec}/msf*"]
  end

  def caveats; <<-EOS.undent
    Metasploit can be updated in-place by doing:
      msfupdate
    EOS
  end
end
