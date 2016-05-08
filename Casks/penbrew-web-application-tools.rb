cask 'penbrew-web-application-tools' do
  version '0.1'
  sha256 :no_check

  url "https://github.com/feffi/homebrew-penbrew"
  name 'PenBrew Homebrew Tap - Web application tools'
  homepage 'https://github.com/feffi/homebrew-penbrew'
  license :mit
  stage_only true

  depends_on cask: 'penbrew-prerequisites'

  # Web Applications
  depends_on formula: 'burp'
  depends_on formula: 'cuty_capt'
  depends_on formula: 'skipfish'
  depends_on cask: 'owasp-zap'
  # missing: apache-users
  # missing: Arachni
  # missing: BBQSQL
  # missing: BlindElephant
  # missing: DAVTest
  # missing: deblaze
  # missing: DIRB
  # missing: DirBuster
  # missing: fimap
  # missing: FunkLoad
  # missing: Grabber
  # missing: boss-autopwn
  # missing: joomscan
  # missing: jSQL
  # missing: PadBuster
  # missing: Paros
  # missing: Parsero
  # missing: plecost
  # missing: Powerfuzzer
  # missing: ProxyStrike
  # missing: Recon-ng
  # missing: sqlmap
  # missing: Sqlninja
  # missing: sqlsus
  # missing: ua-tester
  # missing: Uniscan
  # missing: Vega
  # missing: w3af
  # missing: WebScarab
  # missing: Webshag
  # missing: WebSlayer
  # missing: WebSploit
  # missing: Wfuzz
  # WPScan
  depends_on formula: 'libffi'
  depends_on formula: 'curl'
  #git clone https://github.com/wpscanteam/wpscan.git
  #sudo gem install bundler && sudo bundle install --without test
  # missing: XSSer
  # missing: zaproxy
end