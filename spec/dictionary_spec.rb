require 'rspec'
require 'definition'
require 'word'

describe(Word) do
  describe('#word') do
    it('should show the current word') do
      test_word = Word.new('word')
      expect(test_word.word()).to(eq('word'))
    end
  end


end
