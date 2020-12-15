require 'diary'
require 'secretDiary'

describe Diary do
  let(:secretDiary) { SecretDiary.new } 
  let(:diary) { Diary.new } 

  describe '#add_entry' do
    it 'will allow to add an entry when user calls unlock first' do
      secretDiary.unlock
      expect(diary.add_entry).to eq 'Add in entry'
    end

    it 'will raise an error as diary is first locked' do
      expect{ diary.add_entry }.to raise_error('Diary is locked!')
    end

    it 'will raise an error when user locks the diary and tries to add_entry' do
      secretDiary.unlock
      secretDiary.lock
      expect{ diary.add_entry }.to raise_error('Diary is locked!')
    end
  end

  describe '#get_entries' do
    it 'will allow to get entries when user calls unlock first' do
      secretDiary.unlock
      expect(diary.get_entries).to eq 'Show entries'
    end

    it 'will raise an error when user locks the diary and tries to get_entry' do
      secretDiary.unlock
      secretDiary.lock
      expect{ diary.get_entries }.to raise_error('Diary is locked!')
    end

    it 'will raise an error as diary is first locked' do
      expect{ diary.get_entries }.to raise_error('Diary is locked!')
    end
  end

  describe '#lock' do
    it 'will raise an error again after user calls unlock then lock' do
      secretDiary.unlock
      secretDiary.lock
      expect{ diary.add_entry }.to raise_error('Diary is locked!')
    end
  end
end