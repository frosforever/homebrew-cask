cask :v1 => 'omnifocus' do
  if MacOS.release <= :mountain_lion
    version '1.10.6'
    sha256 'bd3aa44dced86fc3921c01f4467422a7b87a92afbd4be642ea4d4bb8b14b728c'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.6/OmniFocus-#{version}.dmg"
  elsif MacOS.release <= :mavericks
    version '2.0.4'
    sha256 '3282eb7e41ec2638f68a92a6509eddd96a96c39b65b954dcedcc4e62289f22a9'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.9/OmniFocus-#{version}.dmg"
  else
    version '2.1.3'
    sha256 '28b79d3b1f9745034337082b217daceae806121c02ca2831c56c5fb9792c8e04'
    url "http://www.omnigroup.com/ftp1/pub/software/MacOSX/10.10/OmniFocus-#{version}.dmg"
  end

  if MacOS.release <= :mountain_lion
    zap :delete => [
                    '~/Library/Application Support/OmniFocus/Plug-Ins',
                    '~/Library/Application Support/OmniFocus/Themes',
                    '~/Library/Preferences/com.omnigroup.OmniFocus.plist'
                   ]
  else
    zap :delete => [
                    '~/Library/containers/com.omnigroup.omnifocus2',
                    '~/Library/Preferences/com.omnigroup.OmniFocus2.LSSharedFileList.plist',
                    '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
                    '~/Library/Caches/Metadata/com.omnigroup.OmniFocus2'
                   ]
  end

  name 'OmniFocus'
  homepage 'https://www.omnigroup.com/omnifocus/'
  license :commercial

  app 'OmniFocus.app'
end
