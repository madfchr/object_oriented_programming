class Rover
  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instruction(instructions)
    instructions.each do |instruction|
      if instruction == "L"
        self.turn(instruction)
      elsif instruction == "R"
        self.turn(instruction)
      elsif instruction == "M"
        self.move
      else
        puts "Invalid instruction!!!"
      end
    end
  end

  def move

  end

  def turn(instruction)
  end
end
