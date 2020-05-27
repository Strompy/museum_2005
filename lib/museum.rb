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

  def add_patron(patron)
    @patrons << patron
  end
end
