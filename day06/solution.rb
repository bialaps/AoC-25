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
end