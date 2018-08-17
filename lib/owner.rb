class Owner
  # code goes here
  attr_reader :species
  @@all=[]

    def initialize(species)
      @species=species
    end


    def self.all
      @@all
    end

    def reset_all

    end

end
