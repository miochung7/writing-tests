require 'secretDiary'

class Diary

  def initialize
    @secretDiary = SecretDiary.new
  end

  def add_entry
    # raise 'Diary is locked' if @locked == true
    if locked
      raise 'Diary is locked!'
    else
      'Add in entry'
    end
  end

  def get_entries
    # raise 'Diary is locked' if @locked == true
    if locked
      raise 'Diary is locked!'
    else
      'Show entries'
    end
  end

  private
  def locked
    return true if @secretDiary.locked == true
  end

end