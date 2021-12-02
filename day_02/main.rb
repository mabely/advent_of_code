require_relative '../input_reader'

def main_2a input
  data = InputReader.new(input).to_a
  depth = 0
  h_position = 0

  data.each do |instruction|
    case instruction[0]
    when 'forward'
      h_position += instruction.last.to_i
    when 'up'
      depth -= instruction.last.to_i
    when 'down'
      depth += instruction.last.to_i
    end
  end

  depth * h_position
end


if __FILE__ == $0
  file = 'input.txt'

  print 'Answer for Part 1: '
  p main_2a(file)
end
