class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instructions(instructions)
    instructions.map do |instruction|
      if instruction == "L" || instruction == "R"
        self.turn(instruction)
      elsif instruction == "M"
        self.move
      else
        puts "Invalid instruction!"
      end
    end
  end

  def move
    # Affects the Rover's position
      if @direction == "N"
        @y_coordinate += 1
      elsif @direction == "E"
        @x_coordinate += 1
      elsif @direction == "S"
        @y_coordinate -= 1
      elsif @direction == "W"
        @x_coordinate -= 1
      else
        puts "Invalid direction!"
      end
  end

  def turn(turn_command)
    # Affects the Rover's direction
    if (turn_command == "L" && @direction == "N") || (turn_command == "R" && @direction == "S")
      @direction = "W"
    elsif (turn_command == "R" && @direction == "N") || (turn_command == "L" && @direction == "S")
      @direction = "E"
    elsif (turn_command == "L" && @direction == "E") || (turn_command == "R" && @direction == "W")
      @direction = "N"
    elsif (turn_command == "R" && @direction == "E") || (turn_command == "L" && @direction == "W")
      @direction = "S"
    else
      puts "What do you mean?"
      # When you don't want me to move, but you tell me to go
      # What do you mean?
    end
  end

  def output
    puts "Rover's position is #{@x_coordinate}, #{@y_coordinate}, #{@direction}"
  end

end

# INPUTS (5)
# puts "What's the size of the plateau?"
# plateau = gets.chomp
# I don't need this for now.
puts "What's the Rover's initial position? Enter x coordinate:"
x_initial = gets.chomp
puts "Thanks. Now enter the y coordinate:"
y_initial = gets.chomp
puts "What's the Rovers's direction? Enter N, E, S or W."
direction = gets.chomp
puts "All set. Now how should the Rover move accros the plateau? Enter R to turn right, L to turn left or M to move forward."
instructions = gets.chomp
array_instructions = instructions.split(//)

rover_1 = Rover.new(x_initial.to_i, y_initial.to_i, direction)
rover_1.read_instructions(array_instructions)
rover_1.output

class Grid

  def initialize
    @x_size = 10
    @y_size = 10
    @rovers = []
  end

  def add_rover(rover.object)
    @rovers << rover.object
  end
end

  r1 = Rover.new
  r2 = Rover.new

  g = Grid.new
  g.add_rover(r1)
  g.add_rover(r2)
