require 'test_helper'

class MygemTest < MiniTest::Unit::TestCase
  def test_truth
    refute_equal 0, Mygem.get_friends_for("calvindelamere")
    #assertThat(Mygem.get_friends_for("calvindelamere"), is(not(0)))
  end
end