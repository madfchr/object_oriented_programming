class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction

  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instruction(instruction)
    instruction.map do |value|
      if value == "L" || value == "R"
        self.turn(value)
      elsif value == "M"
        self.move
      else
        puts "Invalid instruction!"
      end
    end
  end

  def move
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
    end
  end

end
