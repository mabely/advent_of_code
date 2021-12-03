require_relative 'main'

describe '#main1' do
  it 'works' do
    file = 'test.txt'

    expect(main_3a(file)).to eq 198
  end
end

# describe '#main2' do
#   it 'works' do
#     file = 'test.txt'

#     # expect(main_3b(file)).to eq 900
#   end
# end
