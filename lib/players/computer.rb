require 'pry'
class Player::Computer_easy <Player

  attr_accessor :board

 WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]

  def move(board)
    if    !board.taken?("5")
      "5"
    elsif !board.taken?("1")
      "1"
    elsif !board.taken?("3")
      "3"
    elsif !board.taken?("7")
      "7"
    elsif !board.taken?("9")
      "9"
    elsif !board.taken?("2")
      "2"
    elsif !board.taken?("4")
      "4"
    elsif !board.taken?("6")
      "6"
    elsif !board.taken?("8")
      "8"
    end
  end  


end

class Player::Computer_medium <Player

  attr_accessor :board 
  attr_reader 

 WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]

  def move(board)
    if    !board.taken?("5")
      "5"
    elsif !board.taken?("1")
      "1"
    elsif !board.taken?("3")
      "3"
    elsif 
      one_move_away = WIN_COMBINATIONS.find do |line|
        (board.cells[line[0]] == "X" && board.cells[line[1]] == "X" && board.cells[line[2]] == " ") ||
        (board.cells[line[0]] == "X" && board.cells[line[2]] == "X" && board.cells[line[1]] == " ") ||
        (board.cells[line[1]] == "X" && board.cells[line[2]] == "X" && board.cells[line[0]] == " ")
      end
        one_move_away.each.detect {|index| board.cells[index] = " "}
       
      
    end
  end  


end

class Player::Computer_hard <Player

  attr_accessor :board

 WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]

  def move(board)
    if    !board.taken?("5")
      "5"
    elsif !board.taken?("1")
      "1"
    elsif !board.taken?("3")
      "3"
    elsif !board.taken?("7")
      "7"
    elsif !board.taken?("9")
      "9"
    elsif !board.taken?("2")
      "2"
    elsif !board.taken?("4")
      "4"
    elsif !board.taken?("6")
      "6"
    elsif !board.taken?("8")
      "8"
    end
  end  


end
