require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')

class TestSongs < MiniTest::Test

  def setup
    @song = Song.new("Sweet Child of Mine")
  end

  def test_song_has_name
    assert_equal("Sweet Child of Mine", @song.song_name)
  end

end
