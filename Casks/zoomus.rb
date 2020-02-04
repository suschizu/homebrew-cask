cask 'zoomus' do
  version '4.6.17383.0119'
  sha256 '625a9e4443c9401de29de7141e45f21c375888f34e0083e1bf0fb768b0dea377'

  url "https://www.zoom.us/client/#{version}/ZoomInstallerIT.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://zoom.us/client/latest/ZoomInstallerIT.pkg'
  name 'Zoom.us'
  homepage 'https://www.zoom.us/'

  auto_updates true

  pkg 'ZoomInstallerIT.pkg'

  postflight do
    set_ownership '~/Library/Application Support/zoom.us'
  end

  uninstall quit:       'us.zoom.ZoomOpener',
            signal:     [
                          ['KILL', 'us.zoom.xos'],
                        ],
            login_item: 'ZoomOpener',
            delete:     [
                          '/Applications/zoom.us.app',
                          '~/.zoomus/ZoomOpener.app',
                          '~/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin',
                        ]

  zap trash: [
               '~/.zoomus',
               '~/Desktop/Zoom',
               '~/Library/Application Support/zoom.us',
               '~/Library/Caches/us.zoom.xos',
               '~/Library/Internet Plug-Ins/ZoomUsPlugIn.plugin',
               '~/Library/Logs/zoom.us',
               '~/Library/Logs/zoominstall.log',
               '~/Library/Preferences/ZoomChat.plist',
               '~/Library/Preferences/us.zoom.xos.plist',
               '~/Library/Saved Application State/us.zoom.xos.savedState',
             ]
end
