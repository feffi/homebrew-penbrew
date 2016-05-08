cask 'penbrew-forensics-tools' do
  version '0.1'
  sha256 :no_check

  url "https://github.com/feffi/homebrew-penbrew"
  name 'PenBrew Homebrew Tap - Forensics tools'
  homepage 'https://github.com/feffi/homebrew-penbrew'
  license :mit
  stage_only true

  depends_on cask: 'penbrew-prerequisites'

  # Forensics Tools
  depends_on formula: 'binwalk'
  depends_on formula: 'dc3dd'
  depends_on formula: 'ddrescue'
  depends_on formula: 'bulk_extractor'
  depends_on formula: 'capstone'
  depends_on formula: 'pdfcrack'
  # missing: chntpw
  # missing: Cuckoo
  # missing: DFF
  # missing: diStorm3
  # missing: Dumpzilla
  # missing: extundelete
  # missing: Foremost
  # missing: Galleta
  # missing: Guymager
  # missing: iPhone Backup Analyzer
  # missing: p0f
  # missing: pdf-parser
  # missing: pdfid
  # missing: pdgmail
  # missing: peepdf
  # missing: RegRipper
  # missing: Volatility
  # missing: Xplico
end