class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all=[]

    def initialize(species)
      @species=species
      @pets={fishes:[], cats:[], dogs:[]}
      @@all << self
    end

    def buy_fish(name)
      fish=Fish.new(name)
      @pets[:fishes]<<fish
    end

    def buy_cat(name)
      cat=Cat.new(name)
      @pets[:cats]<<cat
    end

    def buy_dog(name)
      dog=Dog.new(name)
      @pets[:dogs]<<dog
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

    def walk_dogs
      
    end

end
