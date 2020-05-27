require './lib/museum'
require './lib/patron'
require './lib/exhibit'
require 'minitest/autorun'
require 'minitest/pride'

class MuseumTest < Minitest::Test
  def test_it_exists
    dmns = Museum.new("Denver Museum of Nature and Science")
    assert_instance_of Museum, dmns
  end
end
