class Player
  @@number_of_players = 0
  attr_accessor :name, :id

  def initialize(name)
    @@number_of_players += 1
    self.id = @@number_of_players
    self.name = name
  end
end
