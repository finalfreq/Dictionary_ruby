require 'rspec'
require 'definition'
require 'word'

describe(Word) do
  before() do
    Word.clear()
  end

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

  describe('.clear') do
    it('will clear out current word list') do
      test_word = Word.new('word')
      test_word.save()
      Word.clear
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('will save the word into list of words') do
      test_word = Word.new('word')
      test_word.save()
      expect(Word.all).to(start_with(test_word))
    end
  end

  describe("#id") do
    it('it provides the id of the word') do
      test_word = Word.new('word')
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('#define') do
    it('will add a definition to the word') do
      test_word = Word.new('word')
      test_definition = Definition.new('an element of speech or writing')
      test_word.define(test_definition)
      expect(test_word.definition()).to(start_with(["an element of speech or writing"]))
    end
  end

  describe('.find') do
    it('will find word from list by id #') do
      test_word = Word.new('word')
      test_word.save()
      expect(Word.find(1)).to(eq(test_word))
    end
  end
end

describe(Definition) do
  before() do
    Definition.clear()
  end

  describe('#define') do
    it('will return the definition') do
      test_definition = Definition.new('This is a definition')
      expect(test_definition.definition()).to(eq("This is a definition"))
    end
  end

  describe('#save') do
    it('will save definition') do
      test_definition = Definition.new('This is a definition')
      test_definition.save
      expect(Definition.all).to(start_with(test_definition))
    end
  end

  describe('.all') do
    it('will be empty at first') do
      test_definition = Definition.new('This is a definition')
      expect(Definition.all).to(eq([]))
    end
  end

  describe('.clear') do
    it('removes all stored definitions') do
      test_definition = Definition.new('This is a definition')
      Definition.clear()
      expect(Definition.all).to(eq([]))
    end
  end
end
