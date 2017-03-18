class Room
  
  attr_reader :room_name, :capacity, :cost
  attr_accessor :guest_list, :song_list
  
  def initialize(room_name, capacity, guest_list, cost, song_list)
    @room_name = room_name
    @capacity = capacity
    @guest_list = guest_list
    @cost = cost
    @song_list = song_list
  end



end