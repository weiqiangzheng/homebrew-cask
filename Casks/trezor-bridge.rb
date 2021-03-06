cask 'trezor-bridge' do
  version '2.0.14'
  sha256 '01cdc05500c1d465300c73235d6cc65ad3eacb733144f10cc64768ba4e7c0ccf'

  url "https://wallet.trezor.io/data/bridge/#{version}/trezor-bridge-#{version}.pkg"
  appcast 'https://wallet.trezor.io/data/bridge/latest.txt',
          checkpoint: '06727ff5fc1efe87efc71bed58294573cc94effaf6f31ef22fc3819da0518e6b'
  name 'TREZOR Bridge'
  homepage 'https://wallet.trezor.io/'

  pkg "trezor-bridge-#{version}.pkg"

  uninstall pkgutil:   'com.bitcointrezor.pkg.TREZORBridge*',
            launchctl: 'com.bitcointrezor.trezorBridge.trezord'
end
