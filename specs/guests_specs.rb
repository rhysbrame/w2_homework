require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class TestGuests < MiniTest::Test

  def setup 
    @guest = Guest.new("Ken")
  end

  def test_guest_name()
    assert_equal("Ken", @guest.guest_name)
  end

end
