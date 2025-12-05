class Day4
  def self.part1
    input = File.read(File.join(__dir__, "input.txt"))

    lines = input.strip.split("\n").map(&:strip)

    grid = lines.map do |line|
      line.chars.map {|c| c == '@' ? 1 : 0}
    end
    
    directions = [
      [-1, -1], [-1, 0], [-1, 1],
      [ 0, -1],          [ 0, 1],
      [ 1, -1], [ 1, 0], [ 1, 1]
    ]

    total = 0

    grid.each_with_index do |row_vec, row|
      row_vec.each_with_index do |cell, col|
        next if cell == 0
        current = [row, col]

        neighbour_count = directions.count do |dir|
          neighbour = [current[0] + dir[0], current[1] + dir[1]]
          nr, nc = neighbour
          nr.between?(0, grid.size - 1) && nc.between?(0, grid[0].size - 1) && grid[nr][nc] == 1
        end

        total += 1 if neighbour_count < 4
      end
    end
    total
  end


  def self.part2
    input = File.read(File.join(__dir__, "input.txt"))

    grid = input.strip.split("\n").map(&:strip)
                .map { |line| line.chars.map { |c| c == '@' ? 1 : 0 } }

    directions = [
      [-1, -1], [-1, 0], [-1, 1],
      [ 0, -1],          [ 0, 1],
      [ 1, -1], [ 1, 0], [ 1, 1]
    ]

    total_removed = 0

    loop do
      to_remove = []

      grid.each_with_index do |row_vec, r|
        row_vec.each_with_index do |cell, c|
          next if cell == 0

          neighbour_count = directions.count do |dr, dc|
            nr, nc = r + dr, c + dc
            nr.between?(0, grid.size - 1) && nc.between?(0, grid[0].size - 1) && grid[nr][nc] == 1
          end

          to_remove << [r, c] if neighbour_count < 4
        end
      end

      break if to_remove.empty?

      to_remove.each { |r, c| grid[r][c] = 0 }
      total_removed += to_remove.size
    end

    total_removed
  end
end