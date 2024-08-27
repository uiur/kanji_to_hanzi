require "test_helper"

class KanjiToHanziTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::KanjiToHanzi::VERSION
  end

  def test_kanji_to_traditional
    assert_equal '燒肉', KanjiToHanzi.kanji_to_traditional('焼肉')
    assert_equal '東京', KanjiToHanzi.kanji_to_traditional('東京')
    assert_equal '學校', KanjiToHanzi.kanji_to_traditional('学校')
    assert_equal '龍', KanjiToHanzi.kanji_to_traditional('竜')
    assert_equal '價格', KanjiToHanzi.kanji_to_traditional('価格')
    assert_equal '醫學', KanjiToHanzi.kanji_to_traditional('医学')
    assert_equal '關西', KanjiToHanzi.kanji_to_traditional('関西')
  end

  def test_kanji_to_simplified
    assert_equal '烧肉', KanjiToHanzi.kanji_to_simplified('焼肉')
    assert_equal '东京', KanjiToHanzi.kanji_to_simplified('東京')
    assert_equal '学校', KanjiToHanzi.kanji_to_simplified('学校')
    assert_equal '龙', KanjiToHanzi.kanji_to_simplified('竜')
    assert_equal '价格', KanjiToHanzi.kanji_to_simplified('価格')
    assert_equal '医学', KanjiToHanzi.kanji_to_simplified('医学')
    assert_equal '关西', KanjiToHanzi.kanji_to_simplified('関西')
  end

  def test_traditional_to_kanji
    assert_equal '焼肉', KanjiToHanzi.traditional_to_kanji('燒肉')
    assert_equal '東京', KanjiToHanzi.traditional_to_kanji('東京')
    assert_equal '学校', KanjiToHanzi.traditional_to_kanji('學校')
    assert_equal '竜', KanjiToHanzi.traditional_to_kanji('龍')
    assert_equal '価格', KanjiToHanzi.traditional_to_kanji('價格')
    assert_equal '医学', KanjiToHanzi.traditional_to_kanji('醫學')
    assert_equal '関西', KanjiToHanzi.traditional_to_kanji('關西')
  end

  def test_simplified_to_kanji
    assert_equal '焼肉', KanjiToHanzi.simplified_to_kanji('烧肉')
    assert_equal '東京', KanjiToHanzi.simplified_to_kanji('东京')
    assert_equal '学校', KanjiToHanzi.simplified_to_kanji('学校')
    assert_equal '竜', KanjiToHanzi.simplified_to_kanji('龙')
    assert_equal '価格', KanjiToHanzi.simplified_to_kanji('价格')
    assert_equal '医学', KanjiToHanzi.simplified_to_kanji('医学')
    assert_equal '関西', KanjiToHanzi.simplified_to_kanji('关西')
  end

  def test_mixed_input
    assert_equal '东京烧肉学校', KanjiToHanzi.kanji_to_simplified('東京焼肉学校')
    assert_equal '東京燒肉學校', KanjiToHanzi.kanji_to_traditional('東京焼肉学校')
    assert_equal '東京焼肉学校', KanjiToHanzi.traditional_to_kanji('東京燒肉學校')
    assert_equal '東京焼肉学校', KanjiToHanzi.simplified_to_kanji('东京烧肉学校')
  end

  def test_no_conversion_needed
    assert_equal '東京', KanjiToHanzi.kanji_to_traditional('東京')
    assert_equal '東京', KanjiToHanzi.traditional_to_kanji('東京')
    assert_equal '学校', KanjiToHanzi.simplified_to_kanji('学校')
  end


  def test_empty_string
    assert_equal '', KanjiToHanzi.kanji_to_traditional('')
    assert_equal '', KanjiToHanzi.kanji_to_simplified('')
    assert_equal '', KanjiToHanzi.traditional_to_kanji('')
    assert_equal '', KanjiToHanzi.simplified_to_kanji('')
  end

  def test_non_chinese_characters
    assert_equal 'Hello, World!', KanjiToHanzi.kanji_to_traditional('Hello, World!')
    assert_equal 'こんにちは', KanjiToHanzi.kanji_to_simplified('こんにちは')
    assert_equal '123', KanjiToHanzi.traditional_to_kanji('123')
    assert_equal '!@#$%^&*()', KanjiToHanzi.simplified_to_kanji('!@#$%^&*()')
  end
end
