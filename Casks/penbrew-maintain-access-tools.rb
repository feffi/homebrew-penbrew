cask 'penbrew-maintain-access-tools' do
  version '0.1'
  sha256 :no_check

  url "https://github.com/feffi/homebrew-penbrew"
  name 'PenBrew Homebrew Tap - Maintain access tools'
  homepage 'https://github.com/feffi/homebrew-penbrew'
  license :mit
  stage_only true

  depends_on cask: 'penbrew-prerequisites'

  # Maintaining Access
  depends_on formula: 'httptunnel'
  depends_on formula: 'sslh'
  depends_on formula: 'udptunnel'
  depends_on formula: 'iodine'
  depends_on formula: 'pwnat'
  depends_on formula: 'stormssh'
  depends_on formula: 'stormssh-completion'
  depends_on formula: 'dns2tcp'
  depends_on formula: 'ptunnel'
  depends_on formula: 'fping'
  # missing: CryptCat
  # missing: Cymothoa
  # missing: dbd
  # missing: Intersect
  # missing: Nishang
  # missing: polenum
  # missing: PowerSploit
  # missing: RidEnum
  # missing: sbd
  # missing: U3-Pwn
  # missing: Webshells
  # missing: Weevely
  # missing: Winexe
end