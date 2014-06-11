#pre-load filters
%w{sass coffee-script}.each do |lib|
  begin
    gem lib
  rescue LoadError
    STDOUT.puts "could not load #{lib}"
  end
end

require 'haml'

engine = Haml::Engine.new STDIN.read#, remove_whitespace: true
STDOUT.puts engine.render
