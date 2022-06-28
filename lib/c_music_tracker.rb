class MusicTracker

  def initialize
    @musictracker = []
  end

  def add_track(track)
    @musictracker << track
    @noduplicate = @musictracker.uniq
  end

  def list
    fail "No tracks listed." if @musictracker.empty?
    return @noduplicate
  end


end
