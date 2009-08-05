module Lastfm
  class Artist < Base
    attr_accessor :name

    def initialize(name, params = nil)
      raise ArgumentError, 'Name is required' if name.empty?
      @name = name
      response = Lastfm::Connection.new('artist', 'getinfo', params)
    end
    
  end
end