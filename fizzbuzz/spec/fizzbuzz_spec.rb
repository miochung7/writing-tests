require 'fizzbuzz'

describe 'fizzbuzz' do
  it 'returns "Fizz" when it\'s a multiple of 3' do
    expect(fizzbuzz(6)).to eq 'Fizz'
  end
  it 'returns "Buzz" when it\'s a multiple of 5' do
    expect(fizzbuzz(10)).to eq 'Buzz'
  end
  it 'returns "FizzBuzz" when it\'s a multiple of both 3 and 5' do
    expect(fizzbuzz(15)).to eq('FizzBuzz')
  end
  it 'returns the given number for all other cases' do
    expect(fizzbuzz(7)).to eq(7)
  end
end