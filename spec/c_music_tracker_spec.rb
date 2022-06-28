require "c_music_tracker"

RSpec.describe MusicTracker do
  context "when song list is empty" do
    it "fails" do 
      music_tracker = MusicTracker.new
      expect { music_tracker.list }.to raise_error "No tracks listed."
    end
  end

  context "when given a track" do
    it "adds track to the list" do
      music_tracker = MusicTracker.new
      result = music_tracker.add_track("Hold up by Beyonce")
      expect(result).to eq ["Hold up by Beyonce"] 
    end
  end

  context "when given two tracks" do
    it "adds both tracks to the list" do
      music_tracker = MusicTracker.new
      music_tracker.add_track("Hold up by Beyonce") 
      result = music_tracker.add_track("Yellow by Coldplay") 
      expect(result).to eq ["Hold up by Beyonce", "Yellow by Coldplay"]
    end
  end

  context "when given two tracks of same name" do
    it "keeps one copy in the list" do
      music_tracker = MusicTracker.new
      music_tracker.add_track("Hold up by Beyonce") 
      result = music_tracker.add_track("Hold up by Beyonce") 
      expect(result).to eq ["Hold up by Beyonce"]
    end
  end

end
