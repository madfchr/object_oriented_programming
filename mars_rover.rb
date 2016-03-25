class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instructions(instructions)
    instructions.map do |value|
      if value == "L" || value == "R"
        self.turn(value)
      elsif value == "M"
        self.move
      else
        puts "Invalid instructions!"
      end
    end
  end

  def move
    # Affects the Rover's position
      if @direction == "E"
        @x_coordinate += 1
      elsif @direction == "W"
        @x_coordinate -= 1
      elsif @direction == "N"
        @y_coordinate += 1
      elsif @direction == "S"
        @y_coordinate -= 1
      else
        puts "Invalid direction!"
      end
  end

  def turn(turning)
    # Affects the Rover's direction
    if (turning == "L" && @direction == "N") || (turning == "R" && @direction == "S")
      @direction = "W"
    elsif (turning == "R" && @direction == "N") || (turning == "L" && @direction == "S")
      @direction = "E"
    elsif (turning == "L" && @direction == "E") || (turning == "R" && @direction == "W")
      @direction = "N"
    elsif (turning == "R" && @direction == "E") || (turning == "L" && @direction == "W")
      @direction = "S"
    else
      puts "What do you mean?"
      # When you don't want me to move, but you tell me to go
      # What do you mean?
    end
  end

end

# INPUTS (5)
puts "What's the size of the plateau?"
plateau = gets.chomp
puts "What's the Rover's current position? Enter x coordinate:"
x_start = gets.chomp.to_i
puts "Thanks. Now enter the y coordinate:"
y_start = gets.chomp.to_i
puts "What's the Rovers's direction? Enter N, E, S or W."
direction = gets.chomp
puts "All set. Now how should the Rover move accros the plateau? Enter R to turn right, L to turn left or M to move forward."
instructions = gets.chomp
array_instructions = instructions.split(" ")

rover_1 = Rover.new(x_start, y_start, direction)
