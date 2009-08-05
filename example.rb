require 'lib/lastfm-ruby'

# You can add your own API key here. You can apply for an API key at http://www.last.fm/api/account
Lastfm::API_KEY = 'b25b959554ed76058ac220b7b2e0a026'

artist = Lastfm::Artist.new('Noisia')