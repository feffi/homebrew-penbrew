cask 'penbrew-stress-testing' do
  version '0.1'
  sha256 :no_check

  url "https://github.com/feffi/homebrew-penbrew"
  name 'PenBrew Homebrew Tap - Stress testing tools'
  homepage 'https://github.com/feffi/homebrew-penbrew'
  license :mit
  stage_only true

  depends_on cask: 'penbrew-prerequisites'

  # Stress Testing
  depends_on formula: 'iperf3'
  depends_on formula: 'jmeter'
  # missing: DHCPig
  # missing: FunkLoad
  # missing: iaxflood
  # missing: Inundator
  # missing: inviteflood
  # missing: ipv6-toolkit
  # missing: mdk3
  # missing: Reaver
  # missing: rtpflood
  # missing: SlowHTTPTest
  # missing: t50
  # missing: Termineter
  # missing: THC-IPV6
  # missing: THC-SSL-DOS
end