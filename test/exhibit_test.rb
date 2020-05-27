require './lib/exhibit'
require 'minitest/autorun'
require 'minitest/pride'

class ExhibitTest < Minitest::Test
  def test_it_exits
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
    assert_instance_of Exhibit, exhibit
  end

end
