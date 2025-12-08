class Day7
  input = File.readlines(File.join(__dir__,"input.txt"))
  
  @@total_count = 0
  @@visited = []
  @@grid = input.map(&:chomp)

  def self.part1

    s_position = nil

    @@grid.each_with_index do |line, row|
      col = line.index("S")
      s_position = [row, col] if col
    end

    beam(s_position[0] + 1, s_position[1])
    @@total_count
  end

  def self.part2
    # ...
    40
  end

  def self.beam(row, col)
    while row < @@grid.size - 1 && @@grid[row][col] == "."
      row += 1
    end

    return if row >= @@grid.size 

    if @@grid[row][col] == "^" && !@@visited.include?([row,col])
      @@total_count += 1
      @@visited << [row, col]

      beam(row + 1, col - 1)  
      beam(row + 1, col + 1)  
    end
  end
end

Day7.part1