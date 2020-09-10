require "minitest/autorun"
require "minitest/pride"
require "./lib/exhibit"

class Test < Minitest::Test
	def test_it_exist
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})

    assert_instance_of Exhibit, exhibit
	end
end
