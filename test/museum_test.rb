require "minitest/autorun"
require "minitest/pride"
require "./lib/museum"
require './lib/patron'
require './lib/exhibit'

class Test < Minitest::Test
	def test_museum_exist
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_instance_of Museum, dmns
	end
end
