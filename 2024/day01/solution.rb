class Day1
  def self.part1
    input = File.readlines(File.join(__dir__, "input.txt"))

    lines = input.map(&:chomp)
    left, right = lines.map { |line| line.split.map(&:to_i) }.transpose

    left.sort!
    right.sort!

    total = 0

    left.each_with_index do |l,i|
      total += (l - right[i]).abs
    end

    total
  end
  def self.part2
    input = File.readlines(File.join(__dir__, "input.txt"))

    lines = input.map(&:chomp)

    left = []
    right = []
    similarity_score = 0

    left, right = lines.map{|line| line.split.map(&:to_i)}.transpose

    left.each_with_index do |l,i|
      count = right.count(l)

      similarity_score += count * l 
    end
    similarity_score
  end
end