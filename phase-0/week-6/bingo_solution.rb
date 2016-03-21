# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution
=begin
class BingoBoard

  def initialize
    @bingo_board = Array.new(5) {Array (5.times.map{rand(1..100)})}
    @bingo_board[2][2] = 'X'
  end

  def new_board
    @bingo_board.each{|row| p row}
  end

  def ball
    @letter = ["B","I","N","G","O"].shuffle.first
    @ball = rand(1..100)
    puts "The ball is #{@letter}#{@ball}"
  end


  def verify
    @ball
    @bingo_board.each{|row| p row}
    @bingo_board.collect! do |i| # you're iterating over a double array here
      if i.include?(@ball) # i is a single array, so we're checking if the ball number is included
        i[i.index(@ball)] = 'X'; i # find the index of the included element, replace with X
      else
        i
      end
    end
  end
end
=end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_board = Array.new(5) {Array (5.times.map{rand(1..100)})}
    @bingo_board[2][2] = 'X'
  end

  def new_board
    @bingo_board.each{|row| p row}
  end

  def ball
    @letter = ["B","I","N","G","O"].shuffle.first
    @ball = rand(1..100)
    puts "The ball is #{@letter}#{@ball}"
  end


  def verify
    @ball
    @bingo_board.each{|row| p row}
    @bingo_board.collect! { |i| i.include?(@ball) ? (i[i.index(@ball)] = 'X'; i) : i }
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

newgame = BingoBoard.new(board)
puts newgame.ball
newgame.verify

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
What are the benefits of using a class for this challenge?
How can you access coordinates in a nested array?
What methods did you use to access and modify the array?
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
How did you determine what should be an instance variable versus a local variable?
What do you feel is most improved in your refactored solution?
=end
