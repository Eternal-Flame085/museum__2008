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

  def test_it_has_variables
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_equal "Denver Museum of Nature and Science", dmns.name
    assert_equal [], dmns.exhibits
  end
end
