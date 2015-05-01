require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/word')
require('pry')

get('/') do
  @words = Word.all()
  erb(:index)
end

get('/add_word') do
  erb(:add_word)
end

post('/') do
  word = params.fetch('word')
  word = Word.new(word)
  word.save()
  @words = Word.all()
  erb(:index)
end

get('/word/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word)
end

post('/word/:id') do
  id = params.fetch('id')
  definition = params.fetch('definition')
  definition = Definition.new(definition)
  word = Word.find(params.fetch(id).to_i())
  @definitions = word.define(definition)
  binding.pry
  erb(:word)
end
