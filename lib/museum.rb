require './lib/patron'
require './lib/exhibit'

class Museum
  attr_reader :name, :exhibits, :patrons
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def admit(patron)
    @patrons << patron
  end

  def recommend_exhibits(patron)
    recommend = []
    patron.interests.each do |interest|
      @exhibits.find_all do |exhibit|
        recommend << exhibit if interest == exhibit.name
      end
    end
    recommend
  end
end
