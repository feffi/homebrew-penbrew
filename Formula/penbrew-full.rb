cask 'penbrew' do
  version '0.1'
  sha256 :no_check

  url "https://github.com/feffi/penbrew"
  name 'PenBrew'
  homepage 'https://github.com/feffi/penbrew'
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

  # Exploitation Tools
  depends_on formula: 'sqlmap'
  depends_on formula: 'tcpreplay'
  depends_on formula: 'iproute2mac'
  depends_on formula: 'imagemagick'
  depends_on formula: 'exploitdb'
  depends_on cask: 'maltego'
  #depends_on formula: './modules/metasploit.rb'
  depends_on cask: 'armitage'
  # missing: Backdoor Factory
  # missing: cisco-auditing-tool
  # missing: cisco-global-exploiter
  # missing: cisco-ocs
  # missing: cisco-torch
  # missing: Commix
  # missing: crackle
  # missing: jboss-autopwn                 # https://github.com/SpiderLabs/jboss-autopwn
  # missing: Linux Exploit Suggester
  # missing: SET
  # missing: ShellNoob
  # missing: THC-IPV6
  depends_on formula: './modules/yersinia.rb'

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

  # Hardware Hacking
  depends_on formula: 'apktool'
  depends_on formula: 'smali'
  depends_on formula: 'dex2jar'
  depends_on formula: 'android-sdk'
  depends_on formula: 'platformio'
  depends_on cask: 'arduino'
  depends_on cask: 'iexplorer'
  # missing: Sakis3G

  # Information Gathering
  depends_on formula: 'masscan'
  depends_on formula: 'dnsmap'
  depends_on formula: 'amap'
  depends_on formula: 'nmap'
  depends_on formula: 'hping'
  depends_on formula: 'ssldump'
  depends_on formula: 'testssl'
  depends_on formula: 'ssllabs-scan'
  depends_on formula: 'dnstracer'
  depends_on formula: 'dns2tcp'
  depends_on formula: 'sslscan'
  depends_on formula: 'sslyze'
  #depends_on formula: './modules/dmitry'
  #depends_on formula: './modules/braa'
  depends_on formula: 'ndpi'
  depends_on formula: 'ntopng'
  depends_on formula: 'scapy'
  depends_on formula: 'fragroute'
  depends_on formula: 'wireshark'
  depends_on cask: 'wireshark'
  # missing: acccheck
  # missing: ace-voip
  # missing: Automater
  # missing: bing-ip2hosts
  # missing: CaseFile
  # missing: CDPSnarf
  # missing: cisco-torch
  # missing: Cookie Cadger
  # missing: copy-router-config
  # missing: dnmap
  # missing: dnsenum
  # missing: DNSRecon
  # missing: dnswalk
  # missing: DotDotPwn
  # missing: enum4linux
  # missing: enumIAX
  # missing: Fierce
  # missing: Firewalk
  # missing: fragrouter
  # missing: Ghost Phisher
  # missing: GoLismero
  # missing: goofile
  # missing: InTrace
  # missing: iSMTP
  # missing: lbd
  # missing: Metagoofil
  # missing: Miranda
  # missing: p0f
  # missing: Parsero
  # missing: Recon-ng
  # missing: SET
  # missing: smtp-user-enum
  # missing: snmpcheck
  # missing: sslcaudit
  # missing: SSLsplit
  # missing: sslstrip
  # missing: THC-IPV6
  # missing: theHarvester
  # missing: TLSSLed
  # missing: twofi
  # missing: URLCrazy
  # missing: WOL-E

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

  # Sniffing and Spoofing
  depends_on formula: 'burp'
  depends_on formula: 'mitmproxy'
  depends_on formula: 'sipp'
  depends_on formula: 'spoof-mac'
  # missing: DNSChef
  # missing: fiked
  # missing: hamster-sidejack
  # missing: HexInject
  # missing: iaxflood
  # missing: inviteflood
  # missing: iSMTP
  # missing: isr-evilgrade
  # missing: ohrwurm
  # missing: protos-sip
  # missing: rebind
  # missing: responder
  # missing: rtpbreak
  # missing: rtpinsertsound
  # missing: rtpmixsound
  # missing: sctpscan
  # missing: SIPArmyKnife
  # missing: SIPVicious
  # missing: SniffJoke
  # missing: SSLsplit
  # missing: sslstrip
  # missing: THC-IPV6
  # missing: VoIPHopper
  # missing: WebScarab
  # missing: Wifi Honey
  # missing: xspy
  # missing: Yersinia
  # missing: zaproxy

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

  # Useful Tools
  depends_on formula: 'exiftool'
  depends_on formula: 'ffmpeg'
  depends_on formula: 'faac'
  depends_on formula: 'lame'
  depends_on formula: 'apm-bash-completion'
  depends_on formula: 'boot2docker-completion'
  depends_on formula: 'p7zip'
  depends_on formula: 'brew-cask-completion'
  depends_on formula: 'bash-completion'
  depends_on formula: 'open-completion'
  depends_on formula: 'lynis'
  depends_on formula: 'testdisk'
  depends_on formula: 'ext2fuse'
  depends_on formula: 'ext4fuse'
  depends_on cask: 'handbrake'
  depends_on cask: 'skim'
  depends_on cask: 'sofortbild'
  depends_on cask: 'controlplane'
  depends_on cask: 'cocoapacketanalyzer'
  depends_on cask: 'tuntap'
  depends_on cask: 'adium'
  depends_on cask: 'cyberduck'
  depends_on cask: 'dropbox'
  depends_on cask: 'grandperspective'
  depends_on cask: 'launchcontrol'
  depends_on cask: 'keka'
  depends_on cask: 'gfxcardstatus'
  depends_on cask: 'betterzip'
  depends_on cask: 'freeplane'
  depends_on cask: 'burn'
  depends_on cask: 'coconutbattery'
  depends_on cask: 'tinyumbrella'
  depends_on cask: 'appcleaner'
  depends_on cask: 'alfred'
  depends_on cask: 'qlcolorcode'
  depends_on cask: 'qlmarkdown'
  depends_on cask: 'qlstephen'
  depends_on cask: 'nvalt'
  depends_on cask: 'quicklook-json'
  depends_on cask: 'google-chrome'
  depends_on cask: 'firefox'
  depends_on cask: '1password'
  depends_on cask: 'istat-menus'
  depends_on cask: 'little-snitch'
  depends_on cask: 'bittorrent-sync'
  depends_on cask: 'keepassx'
  depends_on cask: 'filezilla'
  depends_on cask: 'steam'
  depends_on cask: 'gpgtools'
  depends_on cask: 'growlnotify'
  depends_on formula: 'growly'
  depends_on cask: 'audacity'
  depends_on cask: 'clamxav'
  depends_on cask: 'jdownloader'
  depends_on cask: 'openoffice'
  depends_on cask: 'teamviewer'
  depends_on cask: 'tinyumbrella'
  depends_on cask: 'vlc'
  depends_on cask: 'wakeonlan'
  depends_on cask: 'handbrake'
  depends_on cask: 'handbrakecli'
  depends_on cask: 'godot'
  depends_on cask: 'gephi'
  depends_on cask: 'keka'
  depends_on cask: 'controlplane'
  depends_on cask: 'launchcontrol'
  depends_on cask: 'macpass'
  depends_on cask: 'nvalt'
  depends_on cask: 'tftpserver'
  depends_on cask: 'the-unarchiver'
  depends_on cask: 'tinyumbrella'

  # Vulnerability Analysis
  depends_on formula: 'sqlmap'
  depends_on formula: 'nmap'
  depends_on formula: 'nikto'
  # missing: BBQSQL
  # missing: BED
  # missing: cisco-auditing-tool
  # missing: cisco-global-exploiter
  # missing: cisco-ocs
  # missing: cisco-torch
  # missing: copy-router-config
  # missing: DBPwAudit
  # missing: Doona
  # missing: DotDotPwn
  # missing: Greenbone Security Assistant
  # missing: GSD
  # missing: HexorBase
  # missing: Inguma
  # missing: jSQL
  # missing: Lynis
  # missing: ohrwurm
  # missing: openvas-administrator
  # missing: openvas-cli
  # missing: openvas-manager
  # missing: openvas-scanner
  # missing: Oscanner
  # missing: Powerfuzzer
  # missing: sfuzz
  # missing: SidGuesser
  # missing: SIPArmyKnife
  # missing: Sqlninja
  # missing: sqlsus
  # missing: THC-IPV6
  # missing: tnscmd10g
  # missing: unix-privesc-check
  # missing: Yersinia
  # missing: JSPrime

  # Web Applications
  depends_on formula: 'burp'
  depends_on formula: 'cuty_capt'
  depends_on formula: 'skipfish'
  depends_on cask: 'owasp-zap'
  # missing: apache-users
  # missing: Arachni
  # missing: BBQSQL
  # missing: BlindElephant
  # missing: DAVTest
  # missing: deblaze
  # missing: DIRB
  # missing: DirBuster
  # missing: fimap
  # missing: FunkLoad
  # missing: Grabber
  # missing: boss-autopwn
  # missing: joomscan
  # missing: jSQL
  # missing: PadBuster
  # missing: Paros
  # missing: Parsero
  # missing: plecost
  # missing: Powerfuzzer
  # missing: ProxyStrike
  # missing: Recon-ng
  # missing: sqlmap
  # missing: Sqlninja
  # missing: sqlsus
  # missing: ua-tester
  # missing: Uniscan
  # missing: Vega
  # missing: w3af
  # missing: WebScarab
  # missing: Webshag
  # missing: WebSlayer
  # missing: WebSploit
  # missing: Wfuzz

  # WPScan
  depends_on formula: 'libffi'
  depends_on formula: 'curl'
  #git clone https://github.com/wpscanteam/wpscan.git
  #sudo gem install bundler && sudo bundle install --without test

  # missing: XSSer
  # missing: zaproxy

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


  #def install
  #  system "./configure", "--with-libnet-includes=/usr/local/include/",
  #  "--disable-gtk",
  #  "--with-pcap-includes=/usr/local/include",
  #  "--prefix=#{prefix}"
  #  system "make"
  #  system "make install" # if this fails, try separate make/make install steps
  #end

end
