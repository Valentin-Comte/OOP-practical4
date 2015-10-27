class Cat
  def speak
    puts 'Meeow!'
  end
end

class Dog
  def speak
    puts 'Woof!'
  end
end

class PetLover
  attr_accessor :array
  def initialize
    @array = []
    for i in 0..9 do
      if Random.rand(2) == 0
        @array.push(Dog.new)
      else
        @array.push(Cat.new)
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