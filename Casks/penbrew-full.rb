cask 'penbrew-full' do
  version '0.1'
  sha256 :no_check

  url "https://github.com/feffi/homebrew-penbrew"
  name 'PenBrew Homebrew Tap - Full install'
  homepage 'https://github.com/feffi/homebrew-penbrew'
  license :mit
  stage_only true

  depends_on cask: 'penbrew-prerequisites'
  depends_on cask: 'penbrew-exploitation-tools'
  depends_on cask: 'penbrew-forensics-tools'
  depends_on cask: 'penbrew-hardware-hacking'
  depends_on cask: 'penbrew-information-gathering'
  depends_on cask: 'penbrew-maintain-access-tools'
  depends_on cask: 'penbrew-password-attack-tools'
  depends_on cask: 'penbrew-reporting-tools'
  depends_on cask: 'penbrew-reverse-engineering-tools'
  depends_on cask: 'penbrew-sniffing-spoofing'
  depends_on cask: 'penbrew-stress-testing'
  depends_on cask: 'penbrew-usefull-tools'
  depends_on cask: 'penbrew-vulnerability-tools'
  depends_on cask: 'penbrew-web-application-tools'
  depends_on cask: 'penbrew-wireless-tools'
end