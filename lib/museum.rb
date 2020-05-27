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

  def patrons_by_exhibit_interest #yikes haha
    @exhibits.reduce({}) do |patrons_by_exhibit, exhibit|
      patrons_by_exhibit[exhibit] = []
      @patrons.each do |patron|
        patron.interests.each do |interest|
          if interest == exhibit.name
            patrons_by_exhibit[exhibit] << patron
          end
        end
      end
      patrons_by_exhibit
    end
  end

def ticket_lottery_contestants(exhibit)
  contestants = []
  @patrons.each do |patron|
    # require "pry"; binding.pry
    if patron.interests.include?(exhibit.name) && patron.spending_money < exhibit.cost
      contestants << patron
    end
  end
  contestants
end

def draw_lottery_winner(exhibit)
  bowl = ticket_lottery_contestants(exhibit)
  if bowl != nil
    bowl.sample(1)[0]
  end
end

end
