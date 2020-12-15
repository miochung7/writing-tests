=begin
As a user,
So that I know whether there are coins in my piggy bank
I can shake it, and it will “cling” if there is money in it
=end
require 'piggy_bank'

describe PiggyBank do
  let(:piggy_bank) { PiggyBank.new }
  describe 'add coins' do

    it 'adds coins to piggy bank' do
      piggy_bank.add_coins(1000)
      expect(piggy_bank.balance).to eq(1000)
    end
  end
  describe 'shake coins' do
    it 'will shake if there is money in the piggy bank' do
      piggy_bank.add_coins(100)
      # piggy_bank.balance > 0 
      expect(piggy_bank.shake).to eq("cling")
    end
  end
end