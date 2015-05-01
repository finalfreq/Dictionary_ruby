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
  # @word = params.fetch('id')
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
