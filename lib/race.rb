require_relative 'car'
require 'term/ansicolor'

class Color
      extend Term::ANSIColor
    end

class Race
    attr_accessor :cars
  def initialize 
    car1 = Car.new("red")
    car1.accelerate Random.new.rand(100)
    car2 = Car.new("blue")
    car2.accelerate Random.new.rand(100)
    @cars = [car1, car2]
   end

   def winner
        if @cars.first.speed < @cars.last.speed
            @cars.last
        elsif @cars.first.speed > @cars.last.speed
            @cars.first
        else 
            "tie"
        end
    end

    def loser 
      if @cars.first.speed < @cars.last.speed
          puts "car1 lost!"
          #returns last object
          @cars.first 
      elsif @cars.first.speed > @cars.last.speed
          puts "car2 lost!"
          @cars.last
      end
    end
end

10.times do 
  race = Race.new
  if race.winner.class == Car
    puts race.winner.color 
  else
    puts race.winner
  end
end

