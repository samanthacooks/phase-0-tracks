module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude}..."
  end
end


class Bird
  include Flight
  def initialize()
  end
end

class Plane
  include Flight
  def initialize()
  end
end




bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)