cask 'penbrew-prerequisites' do
  version '0.1'
  sha256 :no_check

  url "https://github.com/feffi/homebrew-penbrew"
  name 'PenBrew Homebrew Tap - Prereqesites'
  homepage 'https://github.com/feffi/homebrew-penbrew'
  license :mit
  stage_only true

  # Prereqesites
  depends_on formula: 'git'
  #depends_on 'bundle'
  depends_on formula: 'curl'
  depends_on formula: 'php-install'
  depends_on formula: 'openssl'
  depends_on formula: 'postgresql'
  depends_on formula: 'sqlite'
  depends_on formula: 'rbenv'
  depends_on formula: 'ruby-build'
  depends_on formula: 'rbenv-bundler'
  depends_on formula: 'rbenv-default-gems'
  depends_on formula: 'rbenv-bundler-ruby-version'
  depends_on formula: 'libxml2'
  depends_on formula: 'python'
  depends_on formula: 'node'
  depends_on formula: 'wget'
  depends_on formula: 'netcat'
  depends_on formula: 'tcpdump'
  depends_on formula: 'tcptraceroute'
  depends_on formula: 'prettyping'
  depends_on formula: 'ettercap'
  depends_on formula: 'chkrootkit'
  depends_on formula: 'rkhunter'
  depends_on formula: 'the_silver_searcher'
  depends_on formula: 'autojump'
  depends_on formula: 'htop-osx'
  depends_on formula: 'e2fsprogs'
  depends_on formula: 'ntfs-3g'
  depends_on formula: 'sshfs'
  depends_on formula: 'unrar'
  depends_on formula: 'watch'
  depends_on cask: 'xquartz'
  depends_on cask: 'xquartz'
  depends_on cask: 'virtualbox'
  depends_on cask: 'virtualbox-extension-pack'
  depends_on cask: 'dockertoolbox'
end