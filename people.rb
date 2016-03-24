# STEP 4
class Person
  attr_accessor = :name

  def initialize(name)
    @name = name
  end

#STEP 5
  def greeting
    "Hi, my name is #{@name}."
  end
end
# STEP 1
class Student < Person
# STEP 2
  def learn
    "I get it!"
  end
end

class Instructor < Person
# STEP 3
  def teach
    "Everything in Ruby is an Object."
  end
end

# STEP 6
chris = Instructor.new("Chris")
chris.greeting
