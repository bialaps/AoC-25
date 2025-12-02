lines = File.readlines('input.txt')

count = 0
current_position = 50

lines.each do |line|
  num = line[1..-1].to_i

  if line[0] == "L"
    num.times do
      current_position -= 1
      current_position = 99 if current_position < 0
      count += 1 if current_position == 0
    end

  elsif line[0] == "R"
    num.times do
      current_position += 1
      current_position = 0 if current_position > 99
      count += 1 if current_position == 0
    end
  end
end

puts count