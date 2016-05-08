cask 'penbrew-hardware-hacking' do
  version '0.1'
  sha256 :no_check

  url "https://github.com/feffi/homebrew-penbrew"
  name 'PenBrew Homebrew Tap - Hardware hacking'
  homepage 'https://github.com/feffi/homebrew-penbrew'
  license :mit
  stage_only true

  depends_on cask: 'penbrew-prerequisites'

  # Hardware Hacking
  depends_on formula: 'apktool'
  depends_on formula: 'smali'
  depends_on formula: 'dex2jar'
  depends_on formula: 'android-sdk'
  depends_on formula: 'platformio'
  depends_on cask: 'arduino'
  depends_on cask: 'iexplorer'
  # missing: Sakis3G
end