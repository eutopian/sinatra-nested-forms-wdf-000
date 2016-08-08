class Pirate
  attr_accessor :name, :weight, :height
  attr_reader :ships

  @@all = []
  
  def initialize(name=nil, weight=nil, height=nil)
    @name = name
    @weight = weight
    @height = height
    @@all << self
  end

  def self.all
    @@all
  end

  def ships=(ships)
    @ships = ships.map do |ship|
      new_ship = Ship.new(ship)
      new_ship.pirate = self
      new_ship.pirate.name = self.name
      new_ship.pirate.weight = self.weight
      new_ship.pirate.height = self.height
      new_ship
    end
  end

  def self.clear
    @@all.clear
  end

end