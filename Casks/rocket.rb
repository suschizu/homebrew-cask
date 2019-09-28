cask 'rocket' do
  version '1.6,61:db879acd-macrelease'
  sha256 '4e6372d2282e51fd315720c87f5754c20be3791c448f407c4dd4e4ec9cf6d0cc'

  # ds3.us-east-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://#{version.after_colon}.s3.us-east-2.amazonaws.com/Rocket-#{version.after_comma.before_colon}.dmg"
  appcast 'https://updates.devmate.com/net.matthewpalmer.Rocket.xml'
  name 'Rocket'
  homepage 'https://matthewpalmer.net/rocket/'

  app 'Rocket.app'

  zap trash: [
               '~/Library/Application Support/Rocket',
               '~/Library/Preferences/net.matthewpalmer.Rocket.plist',
             ]
end
