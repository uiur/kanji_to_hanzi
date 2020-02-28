require "test_helper"

class KanjiToHanziTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::KanjiToHanzi::VERSION
  end

  def test_it_does_something_useful
    assert KanjiToHanzi.kanji_to_traditional('焼肉') == '燒肉'
    assert KanjiToHanzi.kanji_to_simplified('焼肉') == '烧肉'
  end
end
