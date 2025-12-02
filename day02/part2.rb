require 'benchmark'

file = File.read("input.txt")
ranges = file.split(",")

id_count = 0

time = Benchmark.measure do

ranges.each do |range|
  min, max = range.split("-").map {|n| n.to_i }
  
  (min..max).each do |n|
    digits = n.digits.reverse
    increment = 1

    invalid = false
    
    while increment <= digits.length / 2
      if digits.length % increment == 0
        block = digits[0, increment]

        repeated = block * (digits.length / increment)

        if repeated == digits
          invalid = true
          break
        end
      end

      increment += 1
    end

    id_count += n if invalid
  end
end

end
puts id_count
puts "#{time.real.round(3)}s"