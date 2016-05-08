cask 'penbrew-reporting-tools' do
  version '0.1'
  sha256 :no_check

  url "https://github.com/feffi/homebrew-penbrew"
  name 'PenBrew Homebrew Tap - Reporting tools'
  homepage 'https://github.com/feffi/homebrew-penbrew'
  license :mit
  stage_only true

  depends_on cask: 'penbrew-prerequisites'

  # Reporting Tools
  depends_on formula: 'cuty_capt'
  depends_on formula: 'dos2unix'
  depends_on formula: 'tree'
  depends_on formula: 'haproxy'
  # missing: CaseFile
  # missing: Dradis
  # missing: KeepNote
  # missing: MagicTree
  # missing: Metagoofil
  # missing: Nipper-ng
  # missing: pipal
end