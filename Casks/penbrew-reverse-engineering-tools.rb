cask 'penbrew-reverse-engineering-tools' do
  version '0.1'
  sha256 :no_check

  url "https://github.com/feffi/homebrew-penbrew"
  name 'PenBrew Homebrew Tap - Reverse engineering tools'
  homepage 'https://github.com/feffi/homebrew-penbrew'
  license :mit
  stage_only true

  depends_on cask: 'penbrew-prerequisites'

  # Reverse Engineering
  depends_on formula: 'apktool'
  depends_on formula: 'dex2jar'
  depends_on formula: 'yara'
  depends_on formula: 'smali'
  depends_on formula: 'valgrind'
  depends_on formula: 'flasm'
  # missing: diStorm3
  # missing: edb-debugger
  depends_on formula: 'jad'
  # missing: javasnoop
  # missing: JD-GUI
  # missing: OllyDbg
end