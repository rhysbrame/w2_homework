class Room
  
  attr_reader :room_name, :capacity, :cost
  
  def initialize(room_name, capacity, cost)
    @room_name = room_name
    @capacity = capacity
    @guest_list = []
    @cost = cost
    @song_list = []
  end

  def guest_list_count()
    return @guest_list.length()
  end

  def song_list_count()
    return @song_list.length()
  end

  def check_in(guest)
    @guest_list << guest
  end

  def check_out(guest)
    index = @guest_list.index(guest)
    @guest_list.slice!(index, 1)
  end

  def add_songs_to_song_list(song)
    @song_list << song
  end
end