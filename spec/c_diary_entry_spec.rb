require 'c_diary_entry'

RSpec.describe DiaryEntry do
  it "consructs" do
    diary_entry = DiaryEntry.new("my title", "my contents")
    expect(diary_entry.title).to eq "my title"
    expect(diary_entry.contents).to eq "my contents"
  end
  
  describe '#count_words' do
    it "returns the number of words in the contents as an int" do
      diary_entry = DiaryEntry.new("my title", "my contents")
      expect(diary_entry.count_words).to eq 2
    end
  end

  describe "#reading_time(wpm)" do
    it "returns the amount of time needed to read the contents, given the wpm"
      diary_entry = DiaryEntry.new("my title", "my contents")
      expect(diary_entry.reading_time(2)).to eq 1
    end  

  end


end
