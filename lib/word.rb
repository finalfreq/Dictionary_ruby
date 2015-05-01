class Word
  @@words = []

  attr_reader(:word, :definition)

  def initialize(word)
    @word = word
    @definition = []
  end

  def save
    @@words.push(self)
  end

  def self.all
    @@words
  end

  def define(definition)
    @definition.push(definition)
  end


end
