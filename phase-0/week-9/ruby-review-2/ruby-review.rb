# OO Basics: Student

# I worked on this challenge with David Ny Walden.
# This challenge took me [#] hours.

# Pseudocode
# initialize the class and set instance variables equal to paramaters
# create instances of the class Student
# create array made up of student objects
# define method average to count averages of students' scores
# iterate through srudents array and sum the values of the elements
# divide sum of elements by number of elements in array
# define letter_grade method to grade students' performance based on averages using if/else statement
# define linear_search method to return student index in students array based on first name
# iterate over array
# IF first name equals name
# return index of element
# ESLE return -1
# define binary_search method to return student index in students array based on first name
# sort array by first name
# set value of removed elements to 0
# loop over sorted array
# set middle value to length of array divided by 2
# set left to middle element range of elements to start from first element and end with previous to middle element
# set right to middle element range of elements to start from next to middle element and end with last element of array
# set test variable to first name of middle student in sorted array
# IF name equals test name RETURN sum offset and middle
# ELSIF name is greater than test
# set offset to middle plus 1
# set sorted array equal to right
# ELSIF name is less than test
# set sorted array equal to left
# ELSE RETURN -1


# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end
    
  def average
    sum = 0
    @scores.each do |value|
      sum += value
    end
    @avg = sum/@scores.length 
  end  
  
  def letter_grade
    if @avg >= 90 && @avg <= 100
      return "A"
    elsif @avg >= 80 && @avg < 90
      return "B"
    elsif @avg >= 70 && @avg < 80
      return "C"
    elsif @avg >= 60 && @avg < 70
      return "D"
    else
      return "F" 
    end
  end

end
 

def linear_search(array, name)
    array.each_index do |index|
      if array[index].first_name == name
        return index
      else
        return -1
      end
    end  
  end


def binary_search(array, name)
  sorted = array.sort_by {|letter| letter.first_name}
  offset = 0
    loop do
      mid = sorted.length/2
      left = sorted[0..mid-1]
      right = sorted[mid+1..sorted.length-1]
      test = sorted[mid].first_name
      if name == test
        return offset + mid 
      elsif name > test
        offset += mid + 1
        sorted = right
      elsif name < test
        sorted = left
      else
        return -1 # the method doesn't return -1 when student name is not found
      end         # loop keeps running
    end
  end  


student1 = Student.new("Alex",[100,100,100,0,100])
student2 = Student.new("Sarah",[90,80,80,70,100])
student3 = Student.new("Frank",[80,100,100,90,100])
student4 = Student.new("Anna",[100,90,90,100,100])
student5 = Student.new("Sam",[90,80,50,70,100])

students = [student1, student2, student3, student4, student5]

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

# Additional Tests 3:

p binary_search(students, "Alex") == 0
p binary_search(students, "NOT A STUDENT") == -1


=begin 
Reflection
1. What concepts did you review in this challenge?
We reviewed classes, nested arrays, attribute methods, iteration and control flow.
2. What is still confusing to you about Ruby?
Iteration through nested arrays.
3. What are you going to study to get more prepared for Phase 1?
Iteration and attribute methods.
=end
