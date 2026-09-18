# Normalize duplicate Windows PATH entries before Bundler or Jekyll spawns tools.
if Gem.win_platform?
  runtime_path = ENV['PATH'] || ENV['Path']
  ENV.keys.select { |key| key.downcase == 'path' }.each { |key| ENV.delete(key) }
  ENV['PATH'] = runtime_path if runtime_path
end

require 'bundler/setup'
load Gem.bin_path('jekyll', 'jekyll')
