
module Knight

  def knight_moves(start_position, end_position)
    #get the possible graph moves
    move_array =[] << start_position

    start_position == end_position ? return start_position
    move_graph = move_graph()
    #set the node of the starting posistion so the possible moves are avalible
    node = nil
    move_graph.each { |element| start_position == element[0] ? node = element}
    #for each possible move run the algorithom recursivly till end position is found
    #add make a recusive variable to the collect the path and add push it at the end to a collected array
    node[1].each { |element| knight_moves(element,end_position)}


  end

end
