cask 'penbrew-password-attack-tools' do
  version '0.1'
  sha256 :no_check

  url "https://github.com/feffi/homebrew-penbrew"
  name 'PenBrew Homebrew Tap - Password attack tools'
  homepage 'https://github.com/feffi/homebrew-penbrew'
  license :mit
  stage_only true

  depends_on cask: 'penbrew-prerequisites'

  # Password Attacks
  depends_on formula: 'burp'
  depends_on formula: 'crunch'
  depends_on formula: 'ncrack'
  depends_on formula: 'john-jumbo'
  depends_on formula: 'hydra'
  depends_on formula: 'truecrack'
  depends_on formula: 'ophcrack'
  # missing: acccheck
  # missing: CeWL
  # missing: chntpw
  # missing: cisco-auditing-tool
  # missing: CmosPwd
  # missing: creddump
  # missing: DBPwAudit
  # missing: findmyhash
  # missing: gpp-decrypt
  # missing: hash-identifier
  # missing: HexorBase
  # missing: Johnny
  # missing: keimpx
  # missing: Maskprocessor
  # missing: multiforcer
  # missing: oclgausscrack
  # missing: PACK
  # missing: patator
  # missing: phrasendrescher
  # missing: polenum
  # missing: RainbowCrack
  # missing: rcracki-mt
  # missing: RSMangler
  # missing: SQLdict
  # missing: Statsprocessor
  depends_on formula: 'thc-pptp-bruter'
  # missing: TrueCrack
  # missing: WebScarab
  # missing: wordlists
  # missing: zaproxy
end