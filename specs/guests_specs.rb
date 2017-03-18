require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class TestGuests < MiniTest::Test

  def setup 
    @guest = Guest.new("Ken", "Wonderwall", 500)
  end

  def test_guest_name()
    assert_equal("Ken", @guest.guest_name)
  end

  def test_fav_song
    assert_equal("Wonderwall", @guest.fav_song)
  end

  def test_money
    assert_equal(500, @guest.money)
  end

end
