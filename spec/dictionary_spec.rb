require 'rspec'
require 'definition'
require 'word'

describe(Word) do
  describe('#word') do
    it('will show the current word') do
      test_word = Word.new('word')
      expect(test_word.word()).to(eq('word'))
    end
  end

  describe('.all') do
    it('will be empty at first') do
      test_word = Word.new('word')
      expect(Word.all).to(eq([]))
    end
  end

  describe('save') do
    it('will save the word into list of words') do
      test_word = Word.new('word')
      test_word.save()
      expect(Word.all).to start_with(test_word)
    end
  end
end
