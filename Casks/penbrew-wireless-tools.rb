cask 'penbrew-wireless-tools' do
  version '0.1'
  sha256 :no_check

  url "https://github.com/feffi/homebrew-penbrew"
  name 'PenBrew Homebrew Tap - Wireless tools'
  homepage 'https://github.com/feffi/homebrew-penbrew'
  license :mit
  stage_only true

  depends_on cask: 'penbrew-prerequisites'

  # Wireless Attacks
  depends_on formula: 'aircrack-ng'
  # missing: Asleap
  # missing: Bluelog
  # missing: BlueMaho
  # missing: Bluepot
  # missing: BlueRanger
  # missing: Bluesnarfer
  # missing: Bully
  # missing: coWPAtty
  # missing: crackle
  # missing: eapmd5pass
  # missing: Fern Wifi Cracker
  # missing: Ghost Phisher
  # missing: GISKismet
  # missing: Gqrx
  # missing: gr-scan
  # missing: kalibrate-rtl
  # missing: KillerBee
  # missing: Kismet
  # missing: mdk3
  # missing: mfcuk
  # missing: mfoc
  # missing: mfterm
  # missing: Multimon-NG
  # missing: PixieWPS
  # missing: Reaver
  # missing: redfang
  # missing: RTLSDR Scanner
  # missing: Spooftooph
  # missing: Wifi Honey
  # missing: Wifitap
  # missing: Wifite
end