# KanjiToHanzi
Translate Japanese Kanji to Chinese Hanzi (simplified and traditional)

```ruby
KanjiToHanzi.kanji_to_simplified('焼肉')
#=> '烧肉'
KanjiToHanzi.kanji_to_traditional('焼肉')
#=> '燒肉'
```

The chinese character mapping table is attributed to:

http://lotus.kuee.kyoto-u.ac.jp/~chu/pubdb/LREC2012/kanji_mapping_table.txt

```
Chenhui Chu, Toshiaki Nakazawa and Sadao Kurohashi:
Chinese Characters Mapping Table of Japanese, Traditional Chinese and Simplified Chinese
In Proceedings of the Eighth Conference on International Language Resources and Evaluation
(LREC2012), pp.2149-2152, Istanbul, Turkey, (2012.5).
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kanji_to_hanzi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kanji_to_hanzi

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
