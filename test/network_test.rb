require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'

class ShowTest < Minitest::Test

  def setup
  end
end








# Use TDD to create a `Network` class that responds to the following interaction pattern. A character is a main character for the network if their salary is greater than 500_000 and their character name has no lowercase letters.
#
# ```ruby
# pry(main)> require './lib/network'
# # => true
#
# pry(main)> require './lib/show'
# # => true
#
# pry(main)> require './lib/character'
# # => true
#
# pry(main)> nbc = Network.new("NBC")
# # => #<Network:0x00007fe5f83ea3b0...>
#
# pry(main)> nbc.name
# # => "NBC"
#
# pry(main)> nbc.shows
# # => []
#
# pry(main)> michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
# # => #<Character:0x00007fe5f88721f8...>
#
# pry(main)> kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
# # => #<Character:0x00007fe5f8448f78...>
#
# pry(main)> knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
# # => #<Show:0x00007fe5f8398970...>
#
# pry(main)> leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
# # => #<Character:0x00007fe5f832bb18...>
#
# pry(main)> ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
# # => #<Character:0x00007fe5f8172a60...>
#
# pry(main)> parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
# # => #<Show:0x00007fe5f88b0a20...>
#
# pry(main)> nbc.add_show(knight_rider)
#
# pry(main)> nbc.add_show(parks_and_rec)
#
# pry(main)> nbc.shows
# # => [#<Show:0x00007fe5f8398970...>, #<Show:0x00007fe5f88b0a20...>]
#
# pry(main)> nbc.main_characters
# # => [#<Character:0x00007f98a4ba8dc8...>]
#
# pry(main)> nbc.actors_by_show
# # => {
#       #<Show:0x00007fe5f8398970...> => ["David Hasselhoff", "William Daniels"],
#       #<Show:0x00007fe5f88b0a20...> => ["Amy Poehler", "Nick Offerman"]
# #    }
