require './lib/patron'
require './lib/exhibit'

class Museum
  attr_reader :name, :exhibits
  def initialize(name)
    @name = name
    @exhibits = []
  end
end
