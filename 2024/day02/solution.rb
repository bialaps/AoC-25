class Day2
  def self.part1
    input = File.readlines(File.join(__dir__, "input.txt"))
    levels = input.map { |line| line.split.map(&:to_i) }

    safe = 0
    levels.each do |level|
      safe += 1 if search_safe(level)
    end

    safe
  end
  def self.part2
    input = File.readlines(File.join(__dir__, "input.txt"))
    levels = input.map { |line| line.split.map(&:to_i) }

    safe = 0

    levels.each do |level|
      if search_safe(level)
          safe += 1
          next
      end
          removable_safe = false

    level.each_index do |i|
      new_level = level.dup
      new_level.delete_at(i)

      if search_safe(new_level)
        removable_safe = true
        break
      end
    end

    safe += 1 if removable_safe
    end

    safe
  end
  def self.search_safe(level)
    trend = level[0] < level[1] ? :increasing : :decreasing
    safe_line = true

    level.each_with_index do |num, index|
      next if index == level.length - 1
      diff = level[index + 1] - num

      if trend == :increasing
        safe_line = false unless diff.between?(1, 3)
      else
        safe_line = false unless diff.between?(-3, -1)
      end

      break unless safe_line
    end

    safe_line
  end
end

puts Day2.part1