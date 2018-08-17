class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species
  @@all=[]
  @@count=0

    def initialize(species)
      @species=species
      @pets={fishes:[], cats:[], dogs:[]}
      @@all << self
    end

    def buy_fish(name)
      fish=Fish.new(name)
      @pets[fishes]<<fish
    end

    def count
      @@count+=1
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
