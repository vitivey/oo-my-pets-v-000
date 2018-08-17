class Owner
  # code goes here
  attr_reader :species
  @@all=[]

    def initialize(species)
      @species=species
      @pets={fishes:[], cats:[], dogs:[]}
      @@all << self
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
