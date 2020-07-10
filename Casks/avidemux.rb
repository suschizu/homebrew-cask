cask 'avidemux' do
  version '2.7.6'
  sha256 '4641d0d8f79dceddfcec6fe24d94dd6dd76e963e552711964afdd3fc92b15e46'

  # fosshub.com/Avidemux.html/ was verified as official when first introduced to the cask
  url "http://www.fosshub.com/Avidemux.html/Avidemux_#{version}_Catalina_64Bits_Qt5.dmg"
  appcast 'https://sourceforge.net/projects/avidemux/rss?path=/avidemux'
  name 'Avidemux'
  homepage 'https://www.avidemux.org/'

  app "Avidemux_#{version}.app"
end
