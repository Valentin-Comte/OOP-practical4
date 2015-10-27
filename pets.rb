class Pet
  def initialize
    @food = "many things"
    @home = "in my home"
  end
  def speak
    puts "noise"
  end
  def daily_routine
    puts "I am #{self.class.name}"
    puts "I eat #{@food}"
    3.times.collect{self.speak}
    puts "I sleep in #{@home}"
  end
end

class Cat < Pet
  def initialize
    @food = "fish"
    @home = "my basket"
  end
  def speak
    puts "Meeow!"
  end
end

class Dog < Pet
  def initialize
    @food = "meat"
    @home = "my kennel"
  end
  def speak
    puts "Woof!"
  end
end

class RodentPet < Pet
  def speak
    puts "squeak!"
  end
end

class Mouse < RodentPet
  def initialize
    @food = "cheese"
    @home = "my hole in the wall"
  end
end

class Gerbil < RodentPet
  def initialize
    @food = "fruits"
    @home = "the garden"
  end
end

class Fox < Pet
end

class PetLover
  attr_accessor :array
  def initialize
    @array = []
    for i in 0..10 do
      rand = Random.rand(5)
      if rand == 0
        @array.push(Dog.new)
      elsif rand == 1
        @array.push(Cat.new)
      elsif rand == 2
        @array.push(Mouse.new)
      elsif rand == 3
        @array.push(Gerbil.new)
      elsif rand == 4
        @array.push(Fox.new)
      end
    end
  end
end

def main()
  pets = PetLover.new
  for pet in pets.array do
    pet.daily_routine
  end
end

main()