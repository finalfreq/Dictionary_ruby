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

  describe('#save') do
    it('will save the word into list of words') do
      test_word = Word.new('word')
      test_word.save()
      expect(Word.all).to(start_with(test_word))
    end
  end

  describe('#define') do
    it('will add a definition to the word') do
      test_word = Word.new('word')
      test_definition = Definition.new('an element of speech or writing')
      test_word.define(test_definition)
      expect(test_word.definition()).to(start_with([test_definition]))
    end
  end



end


describe(Definition) do
  describe('#define') do
    it('will return the definition') do
      test_definition = Definition.new('This is a definition')
      expect(test_definition.definition()).to(eq("This is a definition"))
    end
  end
end
