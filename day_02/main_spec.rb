require_relative 'main'

describe '#main1' do
  it 'works' do
    file = 'test.txt'

    expect(main_2a(file)).to eq 150
  end
end

describe '#main2' do
  it 'works' do
    file = 'test.txt'

    expect(main_2b(file)).to eq 900
  end
end
