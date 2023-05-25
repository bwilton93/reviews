require 'grades'

RSpec.describe 'grades' do
  it 'returns Green: 1, when input contains 1 green' do
    input = 'Green'
    result = generate_scorecard(input)
    expect(result).to eq 'Green: 1'
  end

  it 'Green: 3\nAmber: 1\nRed: 1 when input is Green, Green, Amber, Red, Green' do
    input = 'Green, Green, Amber, Red, Green'
    result = generate_scorecard(input)
    expect(result).to eq 'Green: 3\nAmber: 1\nRed: 1'
  end
end
