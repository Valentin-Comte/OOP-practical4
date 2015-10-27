class Pet
  def speak
    puts 'noise'
  end
end

class Cat < Pet
  def speak
    puts 'Meeow!'
  end
end

class Dog < Pet
  def speak
    puts 'Woof!'
  end
end

class RodentPet < Pet
  def speak
    puts 'squeak!'
  end
end

class Mouse < RodentPet
end

class Gerbil < RodentPet
end

class Fox < Pet
end

class PetLover
  attr_accessor :array
  def initialize
    @array = []
    for i in 0..100 do
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
    pet.speak
  end
end

main()