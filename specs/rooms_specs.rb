require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')
  
class TestRooms < MiniTest::Test
  def setup
    @guest1 = Guest.new("Ken", "Wonderwall", 500)
    @guest2 = Guest.new("Samson", "That's the way i like it", 50)
    @guest3 = Guest.new("Rob", "Bohemian Rhapsody", 2500)
    @song1 = Song.new("Sweet Child of Mine")
    @song2 = Song.new("Wonderwall")
    @song3 = Song.new("That's the way i like it")
    @song4 = Song.new("Bohemian Rhapsody")
    @room = Room.new("80s", 4, 100)
  end
  
  def test_room_name()
    assert_equal("80s", @room.room_name)
  end

  def test_room_capacity()
    assert_equal(4, @room.capacity)
  end

  def test_room_cost()
    assert_equal(100, @room.cost)
  end

  def test_room_guest_list()
    assert_equal(0, @room.guest_list_count)
  end

  def test_song_list_count()
    assert_equal(0, @room.song_list_count)
  end

  def test_check_in_guest()
    @room.check_in(@guest1)
    assert_equal(1,@room.guest_list_count)
  end

  def test_check_in_three_guests()
     @room.check_in(@guest1)
     @room.check_in(@guest2)
     @room.check_in(@guest3)
    assert_equal(3,@room.guest_list_count)
  end

  def test_check_out_guests()
    @room.check_in(@guest1)
    @room.check_in(@guest2)
    @room.check_in(@guest3)
    @room.check_out(@guest1)
    @room.check_out(@guest3)
    assert_equal("Samson", @guest2.guest_name)
  end

  def test_add_songs_to_song_list()
    @room.add_songs_to_song_list(@song1)
    @room.add_songs_to_song_list(@song2)
    @room.add_songs_to_song_list(@song3)
    assert_equal(3,@room.song_list_count)
  end


end
















