#
# Cookbook Name:: ffmpeg
# Attributes:: default
#
# Copyright 2014, David Joos
#

default['ffmpeg']['install_method'] = :source
default['ffmpeg']['prefix'] = "/usr/local"
default['ffmpeg']['git_repository'] = "git://git.videolan.org/ffmpeg.git"
default['ffmpeg']['compile_flags'] = [
  "--disable-debug",
  "--enable-pthreads",
  "--enable-nonfree",
  "--enable-gpl",
  "--disable-indev=jack",
  "--enable-libx264",
  "--enable-libfaac",
  "--enable-libmp3lame",
  "--enable-libtheora",
  "--enable-libvorbis",
  "--enable-libxvid",
  "--enable-libfaad"
]

# JW 07-06-11: Hash of commit or a HEAD should be used - not a tag. Sync action of Git
# provider will always attempt to update the git clone if a tag is used.
default['ffmpeg']['version'] = "2.2.1" # 0.6.3
default['ffmpeg']['src_url'] = "http://www.ffmpeg.org/releases/" # 0.6.3
default['ffmpeg']['make_threads'] = node['cpu'] ? node['cpu']['total'].to_i : 2
