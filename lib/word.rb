class Word
  @@words = []
  attr_reader(:word, :definition, :id)

  def initialize(word)
    @word = word
    @definition = []
    @id = @@words.length() + 1
  end

  def save
    @@words.push(self)
  end

  def define(definition)
    @definition.push(definition.definition())
  end

  def self.all
    @@words
  end

  def self.clear
    @@words = []

  end

end
