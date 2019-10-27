cask 'unpkg' do
  if MacOS.version <= :mojave
    version '4.5'
    sha256 'e32754b07073b383320d2bc0ce4ba9bd83a3f352043bd6f500741901f00c8c17'
  else
    version '4.6'
    sha256 '6949b648d5cd02138f9e7f505f1fb3541905d6016ed951daa71cb7250c3ace2e'
  end

  # github.com/downloads/timdoug/unpkg was verified as official when first introduced to the cask
  url "https://github.com/downloads/timdoug/unpkg/unpkg-#{version}.zip"
  appcast 'https://github.com/timdoug/unpkg/releases.atom'
  name 'unpkg'
  homepage 'https://www.timdoug.com/unpkg/'

  app "unpkg #{version}/unpkg.app"
end
