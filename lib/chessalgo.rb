require_relative 'move_graph'

class GraphMap

  def initialize(movelist_array)
    @knight_move_possibilities = movelist_array.map{ |ele| GraphNode.new(ele[0], ele[1])}
  end

  def to_s
    @knight_move_possibilities.each { |ele| puts ele}
  end

  def knight_moves(start,end)

  end

end

class GraphNode
  attr_accessor :possible_moves, :node_position

  def initialize(node, possible_board_moves)
    @node_position = node
    @possible_moves = possible_board_moves

  end

  def to_s
    position = self.node_position
    def moves_syntax(array)
      array_string = ""
      array.each_index { |index|
        if index < array.length - 1
          array_string += "#{array[index]} => "
        else
         array_string += "#{array[index]}"
        end}
      array_string
    end
    possible_moves = moves_syntax(self.possible_moves)

    return "Position: #{position}\nPossible Moves:#{possible_moves}\n "

  end
end

 testrun = GraphMap.new(move_graph())

 puts testrun
