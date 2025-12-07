class Day6
  def self.part1
    input = File.readlines(File.join(__dir__, "input.txt"))
    lines = []
    total = 0

    input.each do |line| 
      lines << line.strip.split
    end

    columns = lines.transpose

    columns.each do |column|
      *num, op = column

      total += eval(num.join(op))
    end
    total
  end
  def self.part2 
    lines = File.readlines(File.join(__dir__, "input.txt"))
    lines = lines.map(&:chomp)

    max_width = lines.map(&:length).max
    grid = lines.map { |l| l.ljust(max_width).chars }

    columns = grid.transpose
    
    groups = []
    group = []

    columns.each do |column|
      if column.all? {|c| c == " "}
        groups << group
        group = []
        next
      end
    group << column
    end

    groups << group
    total = 0 

    groups.each do |group|
      op = group[0].last

      numbers = group.map do |problem|
        problem.pop
        problem.join.strip
      end 
      total += eval(numbers.join(op))
    end
    total
  end
end