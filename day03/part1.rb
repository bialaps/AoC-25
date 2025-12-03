require "benchmark"

lines = File.readlines("input.txt")
result = 0

time = Benchmark.measure do
  
  lines.each do |l|
    sum = 0
    numbers = l.chomp.strip.split("").map(&:to_i)
    
    hi_index = numbers.index(numbers.max)
    
    if hi_index != numbers.length - 1
      # highest number not at the end
      sum = (numbers[hi_index] * 10) + numbers[(hi_index + 1)..-1].max 
    else
      # highest number at the end
      sum = numbers.slice(0, numbers.length - 1).max * 10 + numbers[hi_index]
    end
    result += sum 
  end
end
  puts result
  puts "#{time.real.round(3)}s"
  