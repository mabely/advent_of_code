require_relative 'main'

describe 'part 1' do
  it 'counts number of increases for a small file' do
    file = 'test.txt'
    expect(main_1a(file)).to eq 7
  end
end

describe 'part 2' do
  it 'counts the increases based on the sliding windows' do
    file = 'test.txt'
    expect(main_1b(file)).to eq 5
  end
end

