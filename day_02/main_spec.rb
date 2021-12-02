require_relative 'main'

describe '#main1' do
  it 'works' do
    file = 'test.txt'

    expect(main_2a(file)).to eq 150
  end
end
