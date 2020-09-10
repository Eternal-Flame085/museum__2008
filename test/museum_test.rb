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

  def test_it_can_add_exhibits
    dmns = Museum.new("Denver Museum of Nature and Science")
    gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
    dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    imax = Exhibit.new({name: "IMAX",cost: 15})

    dmns.add_exhibit(gems_and_minerals)
    dmns.add_exhibit(dead_sea_scrolls)
    dmns.add_exhibit(imax)
    expected = [gems_and_minerals, dead_sea_scrolls, imax]

    assert_equal expected, dmns.exhibits
  end
end
