# Load standard Ruby libs
require 'rubygems'
require 'cgi'

# Load gem dependencies
dependencies = [
  { :title => 'LibXML', :lib => 'xml', :gem => 'libxml-ruby' },
]

dependencies.each { |lib|
  begin
    require lib[:lib]
  rescue LoadError
    puts "\nERROR: Missing dependency: #{lib[:title]}.\nPlease install with the following command:\nsudo gem install #{lib[:gem]}\n\n"
  end
}

# Load Lastfm classes
%w{base connection artist}.each { |lib| require File.dirname(__FILE__) + "/lastfm/#{lib}" }