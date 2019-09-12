cask 'qmapshack' do
  version '1.13.1'

  if MacOS.version <= :high_sierra
    sha256 '5c935fbb667bbb2037c8e36f4f039740234e76c55c9a10f0c750667708f12a6f'
    url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack_OSX.10.13_#{version}.zip"
  else
    sha256 '500f41c1c3bbb6a99d517c75d38ddb4993405c67c3c7f77b1a94716886950463'
    url "https://bitbucket.org/maproom/qmapshack/downloads/QMapShack_OSX.10.14_#{version}.zip"
  end

  appcast 'https://bitbucket.org/maproom/qmapshack/downloads/'
  name 'QMapShack'
  homepage 'https://bitbucket.org/maproom/qmapshack/wiki/Home'

  app 'QMapShack.app'
end
