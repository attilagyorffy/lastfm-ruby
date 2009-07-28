dependencies = [
  { :title => 'LibXML', :lib => 'xml', :gem => 'libxml-ruby' }
]

# Load dependencies and display a helpful message if something is missing
dependencies.each { |lib|
  begin
    require lib[:lib]
  rescue LoadError
    puts "\nERROR: Missing dependency: #{lib[:title]}.\nPlease install with the following command:\nsudo gem install #{lib[:gem]}\n\n"
  end
}

# Load Lastfm-ruby classes
# require 'lastfm/base'
# ...