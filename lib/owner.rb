class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species
  @@all=[]

    def initialize(species)
      @species=species
      @pets={fishes:[], cats:[], dogs:[]}
      @@all << self
    end

    def buy_fish(name)
      fish=Fish.new(name)
      @pets[fishes]<<fish
    end

    def self.count
      @@all.size
    end

    def self.reset_all
      @@all.clear
    end
    
    def self.all
      @@all
    end

    def say_species
      "I am a human."
    end

    def reset_all

    end

end
