
require 'kanji_to_hanzi/version'


class KanjiToHanzi
  def self.kanji_to_simplified(str)
    str.each_char.map {|c| simplified_table[c]&.first || c }.join('')
  end

  def self.kanji_to_traditional(str)
    str.each_char.map {|c| traditional_table[c]&.first || c  }.join('')
  end

  def self.simplified_table
    load_character_table
    @simplified_table
  end

  def self.traditional_table
    load_character_table
    @traditional_table
  end

  def self.load_character_table
    return if defined?(@simplified_table) && defined?(@traditional_table)

    path = File.join(__dir__, 'kanji_to_hanzi', 'chinese_mapping_table.txt')
    data = File.read(path)

    @simplified_table = {}
    @traditional_table = {}

    data.split("\n").each do |line|
      japanese, traditional, simplified = line.split("\t")
      unless simplified == 'N/A'
        simplified_table[japanese] = simplified.split(',')
      end
      unless traditional == 'N/A'
        traditional_table[japanese] = traditional.split(',')
      end
    end
  end
end
