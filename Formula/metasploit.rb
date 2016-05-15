class Metasploit < Formula
  desc "World's most used penetration testing software"
  homepage "https://www.metasploit.com/framework/"
  head "https://github.com/rapid7/metasploit-framework.git"
  depends_on "postgresql"

  def install
    # initdb /usr/local/var/postgres
    # pg_ctl -D /usr/local/var/postgres -l logfile start
    # createuser msf -P -h localhost
    # createdb -O msf msf -h localhost

    libexec.install Dir["*", ".git"]
    bin.install_symlink Dir["#{libexec}/msf*", "#{libexec}/armitage"]
    system "createuser", "msf", "-P", "-e", "-h", "localhost"
    system "createdb", "-O", "msf", "msf", "-h", "localhost"
  end

  def caveats; <<-EOS.undent
    Metasploit can be updated in-place by doing:
      msfupdate

    If postgresql database init fails, please crease a
    correcsponding role and db manually by:
      initdb /usr/local/var/postgres
      pg_ctl -D /usr/local/var/postgres -l logfile start
      createuser msf -P -h localhost
      createdb -O msf msf -h localhost
    EOS
  end

  test do
    system bin/"msfconsole", "--version"
  end
end
