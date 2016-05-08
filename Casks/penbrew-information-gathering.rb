cask 'penbrew-information-gathering' do
  version '0.1'
  sha256 :no_check

  url "https://github.com/feffi/homebrew-penbrew"
  name 'PenBrew Homebrew Tap - Information gathering'
  homepage 'https://github.com/feffi/homebrew-penbrew'
  license :mit
  stage_only true

  depends_on cask: 'penbrew-prerequisites'

  # Information Gathering
  depends_on formula: 'masscan'
  depends_on formula: 'dnsmap'
  depends_on formula: 'amap'
  depends_on formula: 'nmap'
  depends_on formula: 'hping'
  depends_on formula: 'ssldump'
  depends_on formula: 'testssl'
  depends_on formula: 'ssllabs-scan'
  depends_on formula: 'dnstracer'
  depends_on formula: 'dns2tcp'
  depends_on formula: 'sslscan'
  depends_on formula: 'sslyze'
  #depends_on formula: './modules/dmitry'
  #depends_on formula: './modules/braa'
  depends_on formula: 'ndpi'
  depends_on formula: 'ntopng'
  depends_on formula: 'scapy'
  depends_on formula: 'fragroute'
  depends_on formula: 'wireshark'
  depends_on cask: 'wireshark'
  # missing: acccheck
  # missing: ace-voip
  # missing: Automater
  # missing: bing-ip2hosts
  # missing: CaseFile
  # missing: CDPSnarf
  # missing: cisco-torch
  # missing: Cookie Cadger
  # missing: copy-router-config
  # missing: dnmap
  # missing: dnsenum
  # missing: DNSRecon
  # missing: dnswalk
  # missing: DotDotPwn
  # missing: enum4linux
  # missing: enumIAX
  # missing: Fierce
  # missing: Firewalk
  # missing: fragrouter
  # missing: Ghost Phisher
  # missing: GoLismero
  # missing: goofile
  # missing: InTrace
  # missing: iSMTP
  # missing: lbd
  # missing: Metagoofil
  # missing: Miranda
  # missing: p0f
  # missing: Parsero
  # missing: Recon-ng
  # missing: SET
  # missing: smtp-user-enum
  # missing: snmpcheck
  # missing: sslcaudit
  # missing: SSLsplit
  # missing: sslstrip
  # missing: THC-IPV6
  # missing: theHarvester
  # missing: TLSSLed
  # missing: twofi
  # missing: URLCrazy
  # missing: WOL-E
end