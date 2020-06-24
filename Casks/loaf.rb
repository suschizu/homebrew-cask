cask 'loaf' do
  version '1.0.0'
  sha256 '9a9c57dcebd6c172eef1035c3aefdab35f1845ab02c0ffdcceb256cf567dcf80'

  # github.com/philipardeljan/getloaf/ was verified as official when first introduced to the cask
  url "https://github.com/philipardeljan/getloaf/releases/download/v#{version}/loaf.dmg"
  appcast 'https://github.com/philipardeljan/getmotion/releases.atom'
  name 'Loaf'
  homepage 'https://www.getmotion.io/'

  app 'Loaf.app'

  zap trash: [
               '~/Library/Application Support/Motion (beta)',
               '~/Library/Preferences/com.motionicons.studio.plist',
             ]
end
