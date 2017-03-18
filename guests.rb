class Guest
  attr_reader :guest_name, :fav_song, :money
  def initialize(first_name, fav_song, money)
    @guest_name = first_name
    @fav_song = fav_song
    @money = money
  end
end
