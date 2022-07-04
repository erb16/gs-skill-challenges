require 'diary_entry'

RSpec.describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("my title", "my contents")
    expect(diary_entry.title).to eq "my title"
    expect(diary_entry.contents).to eq "my contents"
  end

  describe '#count_words' do
    it "returns the number of words in the contents as an int" do
      diary_entry = DiaryEntry.new("my title", "my contents")
      expect(diary_entry.count_words).to eq 2
    end
    
    it "returns 0 when contents is empty" do
      diary_entry = DiaryEntry.new("my title", "")
      expect(diary_entry.count_words).to eq 0
    end

  end

  describe "#reading_time(wpm)" do
    it "returns the amount of time needed to read the contents, given the wpm" do
      diary_entry = DiaryEntry.new("my title", "my contents")
      expect(diary_entry.reading_time(2)).to eq 1
    end  
  end

  describe "#reading_time(wpm)" do
    context "when there is no content" do
      it "returns 0" do
        diary_entry = DiaryEntry.new("my title", "")
        expect(diary_entry.reading_time(2)).to eq 0
      end
    end
  end

  describe "#reading_time(wpm)" do
    context "when the reading time is not a whole number" do
      it "rounds up" do
        diary_entry = DiaryEntry.new("my title", "one two three")
        expect(diary_entry.reading_time(2)).to eq 2
      end
    end

    context "given 0 wpm" do
      it "fails" do
        diary_entry = DiaryEntry.new("my title", "one two three")
        expect { diary_entry.reading_time(0) }.to raise_error "Reading speed has to be positive"
      end
    end
  end

  describe "#reading_chunk(wpm, minutes)" do
    context "when the reader has 2 mins and a reading time of 500wpm" do
      it "returns a suitable sized chunk of text" do
        diary_entry = DiaryEntry.new("my title", "one two three")
        expect(diary_entry.reading_chunk(2, 1)).to eq "one two"
      end
    end

    context "when called again" do
      it "returns the next chunk of the text" do
        diary_entry = DiaryEntry.new("my title", "one two three")
        diary_entry.reading_chunk(2, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "three"
      end
    end
  end

end