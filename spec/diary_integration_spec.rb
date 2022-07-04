require 'diary_entry'
require 'diary'

RSpec.describe "Integration" do 
  context "after adding some entries" do
    it "lists out entries added" do
    diary = Diary.new 
    diary_entry1 = DiaryEntry.new("my title 1", "my contents 1")
    diary_entry2 = DiaryEntry.new("my title 2", "my contents 2")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.all).to eq [diary_entry1, diary_entry2]
    end
  end

  describe "counting behaviour" do
    it "counts the words in all the entries' content" do
      diary = Diary.new 
      diary_entry1 = DiaryEntry.new("my title 1", "my contents 1")
      diary_entry2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.count_words).to eq 6
    end
  end

  describe "reading time behaviour" do
    it "calculates the reading time for all the diary entries" do
      diary = Diary.new 
      diary_entry1 = DiaryEntry.new("my title 1", "my contents 1")
      diary_entry2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.reading_time(2)).to eq 3
    end

    context "given 0 wpm" do
      it "fails" do
        diary = Diary.new
        expect { diary.reading_time(0) }.to raise_error "Reading speed has to be positive"
      end
    end
  end

  describe "best reading time entry behaviour" do
    context "with an entry exactly readable within the time" do
      it "returns that entry" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("my title", "my contents")
      diary.add(diary_entry1)
      result = diary.find_best_entry_for_reading_time(2, 1)
      expect(result).to eq diary_entry1
      end
    end 

    context "where we have one entry unreadable within the time" do
      it "return nil" do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("my title", "my contents longer")
        diary.add(diary_entry1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq nil
      end
    end
  end



end