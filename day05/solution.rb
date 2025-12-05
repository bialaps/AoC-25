class Day5
  def self.part1
    input = File.read(File.join(__dir__, "input.txt"))
    
    fresh_ids, available_ids = input.strip.split("\n\n").map(&:strip)

    available_ids = available_ids.lines.map(&:to_i)
    ranges = fresh_ids.lines.map do |line|
      min, max = line.split("-").map(&:to_i)
      min..max
    end

    fresh_count = available_ids.count do |id|
      ranges.any? { |range| range.include?(id) }
    end

    fresh_count
  end

  def self.part2
    input = File.read(File.join(__dir__, "input.txt"))
    
    fresh_ids, available_ids = input.strip.split("\n\n").map(&:strip)

    available_ids = available_ids.lines.map(&:to_i)
    ranges = fresh_ids.lines.map do |line|
      min, max = line.split("-").map(&:to_i)
      min..max
    end

    sorted = ranges.sort_by(&:begin)
    merged = []

    sorted.each do |range|
      if merged.empty? || range.begin > merged.last.end 
        merged << range
      else 
        merged[-1] = merged.last.begin..[merged.last.end, range.end].max
      end
    end

    count = 0

    merged.each do |range|
      count += range.size
    end

    count
  end
end