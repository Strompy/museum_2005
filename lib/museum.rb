require './lib/patron'
require './lib/exhibit'

class Museum
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
