require_relative '../input_reader'

def main_1a input
  data = InputReader.new(input).to_a

  count = 0

  data.each_with_index do |str, i|
    count += 1 if str[0].to_i > data[i-1][0].to_i
  end

  count
end

def main_1b input
  data = InputReader.new(input).to_a
  
  count = 0

  data.each_with_index do |arr, i|
    total1 = data[i..i+2].map {|x| x[0].to_i }.sum
    total2 = data[i+1..i+3].map {|x| x[0].to_i }.sum

    count += 1 if total2 > total1
  end

  count
end


if __FILE__ == $0
  file = 'input.txt'

  print 'Answer for Part 1: '
  puts main_1a(file)
  print 'Answer for Part 2: '
  puts main_1b(file)
end
