lines = File.readlines('input.txt')

count = 0
current_position = 50

lines.each do |line|
  num = line[1..-1].to_i

  if line[0] == "L"
    if current_position - num < 0
      current_position = (current_position - num) % 100
    else
      current_position -= num
    end

  elsif line[0] == "R"
    if current_position + num > 99
      current_position = (current_position + num) % 100
    else
      current_position += num
    end
  end

  count += 1 if current_position == 0
end

puts count