class Word
  @@words = []

  attr_reader(:word)

  def initialize(word)
    @word = word
    @definition = ''
  end

  def save
    @@words.push(self)
  end

  def self.all
    @@words

  end



end
