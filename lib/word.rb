class Word
  @@words = []

  attr_reader(:word, :definitions, :id)

  def initialize(word)
    @word = word
    @definitions = []
    @id = @@words.length().+(1)
  end

  def save
    @@words.push(self)
  end

  def define(definition)
    @definitions.push(definition.definition())
  end

  def self.all
    @@words
  end

  def self.clear
    @@words = []
  end

  def self.find(identification)
    found_word = nil
    @@words.each do |word|
      found_word = word if word.id == identification
    end
    found_word
  end

end
