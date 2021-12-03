require_relative '../input_reader.rb'

def main_3a input
  data = InputReader.new(input).to_a

  gamma = ''
  epsilon = ''

  num_of_bits = data.first.first.size
  set_vars(num_of_bits)

  data.each do |arr|
    arr.first.chars.each_with_index do |char, i|
      if char == "1"
        current_count = instance_variable_get("@count_1_#{i+1}") 
        current_count += 1
        instance_variable_set("@count_1_#{i+1}", current_count) 
      end
    end
  end

  num_of_bits.times do |n|
    if instance_variable_get("@count_1_#{n+1}") > (data.size/2.0)
      gamma << '1'
      epsilon << '0'
    else
      gamma << '0'
      epsilon << '1'
    end
  end

  [gamma, epsilon].map do |x|
    x.to_i(2)
  end.reduce(&:*)
end

def set_vars number_of_elems
  number_of_elems.times do |n|
    instance_variable_set("@count_1_#{n+1}", 0)
  end
end


if __FILE__ == $0
  file = 'input.txt'

  print 'Answer for Part 1: '
  p main_3a(file)
end
