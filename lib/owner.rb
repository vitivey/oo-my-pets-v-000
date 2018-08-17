class Owner
  # code goes here
  attr_reader :species
  @@all=[]

    def initialize(species)
      @species=species
      @pets={fishes:[], cats:[], dogs:[]}
    end


    def self.all
      @@all << self
    end

    def reset_all

    end

end
