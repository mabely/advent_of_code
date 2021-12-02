require_relative '../input_reader'

def main_2a input
  data = InputReader.new(input).to_a
  depth = 0
  h_position = 0

  data.each do |instruction|
    num = instruction.last.to_i

    case instruction[0]
    when 'forward'
      h_position += num
    when 'up'
      depth -= num
    when 'down'
      depth += num
    end
  end

  depth * h_position
end

def main_2b input
  data = InputReader.new(input).to_a
  depth = 0
  h_position = 0
  aim = 0

  data.each do |instruction|
    num = instruction.last.to_i

    case instruction[0]
    when 'forward'
      h_position += num
      depth += (aim * num)
    when 'up'
      aim -= num
    when 'down'
      aim += num
    end
  end

  depth * h_position
end

if __FILE__ == $0
  file = 'input.txt'

  print 'Answer for Part 1: '
  p main_2a(file)

  print 'Answer for Part 2: '
  p main_2b(file)
end
