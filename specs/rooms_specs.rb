require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')

class TestRooms < MiniTest::Test
  def setup
    song_list = []
    guests = []
    @room = Room.new("80s", 4, guests, 100, song_list)
  end
  
  def test_room_name
    assert_equal("80s", @room.room_name)
  end

  def test_room_capacity
    assert_equal(4, @room.capacity)
  end

  def test_room_guest_list
    assert_equal(0, @room.guest_list.length)
  end

  def test_room_cost
    assert_equal(100, @room.cost)
  end

  def test_song_list
    assert_equal(0, @room.song_list.count)
  end
end