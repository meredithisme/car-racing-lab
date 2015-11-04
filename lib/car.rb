class Car
	
  attr_accessor :speed, :color

  def initialize(color="blue")
  	@speed = 0
  	@color = color
  end

  def accelerate(speed_increase)
 	@speed += speed_increase
  end

end
