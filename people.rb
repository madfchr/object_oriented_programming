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

# STEP 7
cristina = Student.new("Cristina")
cristina.greeting

# STEP 8
chris.teach
cristina.learn
cristina.teach
# *** cristina.teach doesn't work, because only
# Instructors can teach. Cristina is a Student,
# therefore she can only learn, an not teach.

# If I wanted to actually print my "callings",
# I'd have to simply add the keyword puts in
# fron of it. (ex : puts chris.teach)
