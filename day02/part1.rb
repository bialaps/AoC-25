require 'benchmark'

file = File.read("input.txt")
ranges = file.split(",")

id_count = 0

time = Benchmark.measure do
  
  ranges.each do |range|
    min, max = range.split("-").map {|n| n.to_i }
    
    (min..max).each do |n|
      if n.digits.length % 2 == 0
        digits = n.digits.reverse
        
        half = digits.length / 2
        left  = digits[0...half]
        right = digits[half..]
        
        if left == right
          id_count += n
        end
      end
    end
  end
end
  
puts id_count
puts "#{time.real.round(3)}s"