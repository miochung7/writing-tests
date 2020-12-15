require 'secretDiary'


describe SecretDiary do
  let(:secretDiary) { SecretDiary.new }

  describe 'initialisation' do
    it { is_expected.to respond_to :locked }
  end

  describe '#unlock' do
    it 'will unlock the diary' do
      secretDiary.unlock
      expect(secretDiary.locked).to eq false 
    end
  end

  describe '#lock' do
    it 'will lock the diary' do
      secretDiary.unlock
      secretDiary.lock
      expect(secretDiary.locked).to eq true 
    end
  end
 
end