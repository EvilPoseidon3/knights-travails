
def boardalgo
  board = Array.new
  for x in 0..8
    for y in 0..8
      board.push([x,y])
    end
  end
  board
end

boardarray = boardalgo()

# print "Board Array\n#{boardarray}\n"

def ontheboard?(coordinate)
(coordinate[0].between?(0,8) && coordinate[1].between?(0,8)) ? true : false
end

def move_graph
  move_graph = Array.new
  board = boardalgo()
  board.each { |position|

    possible_board_moves = []
    move1 = [position[0] + 1, position[1] + 2]
    move2 = [position[0] + 2, position[1] + 1]
    move3 = [position[0] - 1, position[1] + 2]
    move4 = [position[0] - 2, position[1] + 1]
    move5 = [position[0] - 1, position[1] - 2]
    move6 = [position[0] - 2, position[1] - 1]
    move7 = [position[0] + 1, position[1] - 2]
    move8 = [position[0] + 2, position[1] - 1]
    possible_moves = [move1,move2,move3,move4,move5,move6,move7,move8]
    possible_moves.each {|move| ontheboard?(move) ? possible_board_moves.push(move) : nil}
    node_information = [position,possible_board_moves]
    move_graph.push(node_information)
    }
    move_graph

end

# print "Move Graph\n#{move_graph()}\n"
