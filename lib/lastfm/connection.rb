require 'net/http'
require 'uri'

module Lastfm
  class Connection < Base
    
    def initialize(res, method, *args)
      url = URI.parse("#{Lastfm::API_URL}#{Lastfm::API_VERSION}/?method=#{res}.#{method}&artist=Cher&api_key=#{Lastfm::API_KEY}")
      connect(url)
    end
    
    def connect(url)
      request = Net::HTTP::Get.new("#{url.path}?#{url.query}")
      response = Net::HTTP.start(url.host, url.port) do |http|
        http.request(request)
      end

      result = response.body
      return result
      
      # Debug information for the connection response:
      # puts "Code = #{response.code}"
      # response.each { |key, val|
      #   printf "%-14s = %-40.40s\n", key, val
      # }
      # puts "\n#{response.body}\n"
      
    end
    
  end
end