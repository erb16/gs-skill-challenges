1. Describe the Problem
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

```Ruby
class MusicTracker
def initialize
@musictracker #musictracker is an array of strings
end

def add_track(track) #track is a string ie "Yellow by Coldplay"
#adds track to @musictracker
end

def list
#returns list of tracks listened to
end


3. Create Examples as Tests

#1 
music_tracker = MusicTracker.new
music_tracker.list # => []

#2
music_tracker = MusicTracker.new
music_tracker.add_track("Hold up by Beyonce") 
# => ["Hold up by Beyonce"]

#3 
music_tracker = MusicTracker.new
music_tracker.add_track("Hold up by Beyonce") 
music_tracker.add_track("Yellow by Coldplay") 
# => ["Hold up by Beyonce", "Yellow by Coldplay"]

#4
music_tracker = MusicTracker.new
music_tracker.add_track("Hold up by Beyonce") 
music_tracker.add_track("Hold up by Beyonce") 
music_tracker.list # => ["Hold up by Beyonce"]

