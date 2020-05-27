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

  def test_it_has_attributes
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
    assert_equal [gems_and_minerals, dead_sea_scrolls, imax], dmns.exhibits
  end

  def test_it_can_have_patrons
    dmns = Museum.new("Denver Museum of Nature and Science")
    patron_1 = Patron.new("Bob", 20)
    patron_2 = Patron.new("Sally", 20)
    dmns.add_patron(patron_1)
    dmns.add_patron(patron_2)
    assert_equal [patron_1, patron_2], dmns.patrons
  end

  # def test_it_can_recommend_exhibits
  #
  # end
end
