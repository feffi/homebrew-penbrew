cask 'penbrew-sniffing-spoofing' do
  version '0.1'
  sha256 :no_check

  url "https://github.com/feffi/homebrew-penbrew"
  name 'PenBrew Homebrew Tap - Sniffing and spoofing tools'
  homepage 'https://github.com/feffi/homebrew-penbrew'
  license :mit
  stage_only true

  depends_on cask: 'penbrew-prerequisites'

  # Sniffing and Spoofing
  depends_on formula: 'burp'
  depends_on formula: 'mitmproxy'
  depends_on formula: 'sipp'
  depends_on formula: 'spoof-mac'
  # missing: DNSChef
  # missing: fiked
  # missing: hamster-sidejack
  # missing: HexInject
  # missing: iaxflood
  # missing: inviteflood
  # missing: iSMTP
  # missing: isr-evilgrade
  # missing: ohrwurm
  # missing: protos-sip
  # missing: rebind
  # missing: responder
  # missing: rtpbreak
  # missing: rtpinsertsound
  # missing: rtpmixsound
  # missing: sctpscan
  # missing: SIPArmyKnife
  # missing: SIPVicious
  # missing: SniffJoke
  # missing: SSLsplit
  # missing: sslstrip
  # missing: THC-IPV6
  # missing: VoIPHopper
  # missing: WebScarab
  # missing: Wifi Honey
  # missing: xspy
  # missing: Yersinia
  # missing: zaproxy
end