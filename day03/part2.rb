require "benchmark"

lines = File.readlines("input.txt")
total = 0
max = 12

time = Benchmark.measure do

  lines.each do |line|
    numbers = line.chomp.strip.split("").map(&:to_i)
    stack = []

    numbers.each_with_index do |val, ind|
      while !stack.empty? && stack[-1] < val && (stack.length - 1 + numbers.length - ind) >= max
        stack.pop
      end

      stack.push(val) if stack.length < max
    end

    total += stack.join.to_i
  end
end
puts total
puts "#{time.real.round(3)}s"