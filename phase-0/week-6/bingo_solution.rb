# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [6] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Define a method guess
  # Create an instance variable letter and assign it to a randomly chosen letter from the word BINGO
  # Create an instance variable number and assign it to a randomly chosen number from 1 to 100
  # Print the quess to the console

# Check the called column for the number called
  # Iterating over a two-dimensional array
  # IF the letter is B, check the first column
  # ELSIF the letter is I, check the second column
  # ELSIF the letter is N, check the third column
  # ELSIF the letter is G, check the fourth column
  # ELSIF the letter is O, check the fifth column
  # Iterate over a chosen column to find the randomly chosen number

# If the number is in the column, replace with an 'X'
# Display a column to the console
# Display the board to the console (prettily)

# Initial Solution
=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def guess
    @letter = ["B","I","N","G","O"].shuffle.first
    @number = rand(1..100)
    puts "The guess is #{@letter}#{@number}"
  end

  def check
    @letter
    @number
    
    @bingo_board.each do |row| 
      if @letter == "B"
        p row[0]
      elsif @letter == "I"
        p row[1]
      elsif @letter == "N"
        p row[2]
      elsif @letter == "G"
        p row[3]
      elsif @letter == "O"
        p row[4]
      end
    end

    @bingo_board.map! do |row|
      if row.include?(@number)
        row[row.index(@number)] = 'X'; row
      else
        row
      end
    end

    p @bingo_board
  
  end

end
=end

# Refactored Solution

class BingoBoard
require 'pp'
  def initialize(board)
    @bingo_board = board
  end

def guess
    @letter = ["B","I","N","G","O"].shuffle.first
    @number = rand(1..100)
    puts "The guess is #{@letter}#{@number}"
  end

def check
  guess
 
  @bingo_board.each do |row| 
    if @letter == "B"
      p row[0]
        row[0].eql?(@number) ? (row[row.index(@number)] = 'X'; row) : row
    elsif @letter == "I"
      p row[1]
        row[1].eql?(@number) ? (row[row.index(@number)] = 'X'; row) : row
    elsif @letter == "N"
      p row[2]
        row[2].eql?(@number) ? (row[row.index(@number)] = 'X'; row) : row
    elsif @letter == "G"
      p row[3]
        row[3].eql?(@number) ? (row[row.index(@number)] = 'X'; row) : row
    elsif @letter == "O"
      p row[4]
        row[4].eql?(@number) ? (row[row.index(@number)] = 'X'; row) : row
    end
  end
    pp @bingo_board
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.check

#Reflection
=begin
1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
It rather diffucult and time-consuming. I wish it were more detailed and accurate.
2. What are the benefits of using a class for this challenge?
Using a class allows to avoid repetition by sharing instance variables between methods and calling methods in each other.
3. How can you access coordinates in a nested array?
To access coordinates in a nested array one should define the name of the array and the index of the element from each successive inner array,
ea. in square brackets.
For example, board[0][1] = 44
4. What methods did you use to access and modify the array?
I used each, eql?, index.
5. Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, 
what purpose does it serve, and how is it called?
I've learnt pp method. It is commonly called as pp obj or pp(obj) and is used to prettily print the object.
pp(obj, out=$>, width=79)
Outputs obj to out in pretty printed format of width columns in width.
If out is omitted, $> is assumed. If width is omitted, 79 is assumed.
::pp returns out.
6. How did you determine what should be an instance variable versus a local variable?
The variable that should be used in several methods should be an instance variable.
7. What do you feel is most improved in your refactored solution?
At least, it works ))) and  prints the board to the console prettily.
=end
