name             'ffmpeg'
maintainer       "David Joos"
maintainer_email "development@davidjoos.com"
license          "MIT"
description      "Installs/Configures FFMPEG"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.3.1"


%w{ ubuntu debian centos redhat }.each do |os|
    supports os
end

%w{ x264 libvpx build-essential git }.each do |c|
  depends c
end
