class InputReader
  def initialize file
    @file = file
  end

  def to_a
    file = File.open @file
    file_data = file.read
    file.close

    file_data.split("\n").map {|x| x.split /[ ]+/ }
  end
end
