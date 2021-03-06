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
      @pets[:dogs].each {|dog| dog.mood="happy"}
    end

    def play_with_cats
      @pets[:cats].each {|cat| cat.mood="happy"}
    end

    def feed_fish
      @pets[:fishes].each {|fish| fish.mood="happy"}
    end

    def sell_pets
      @pets[:cats].each {|cat| cat.mood="nervous"}
      @pets[:fishes].each {|fish| fish.mood="nervous"}
      @pets[:dogs].each {|dog| dog.mood="nervous"}
      @pets={fishes:[], cats:[], dogs:[]}
    end

    def list_pets
      "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
    end

end
