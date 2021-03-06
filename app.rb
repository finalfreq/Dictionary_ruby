require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/word')
require('pry')

get('/') do
  @words = Word.all()
  erb(:word_list)
end

get('/add_word') do
  erb(:add_word)
end

get('/word/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word_info)
end

get('/word/:id/add_definition') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:definition_form)
end

post('/word') do
  @definition = Definition.new(params.fetch('definition'))
  @word = Word.find(params.fetch('word_id').to_i())
  @definitions = @word.define(@definition)
  erb(:word_info)
end

post('/') do
  word = params.fetch('word')
  word = Word.new(word)
  word.save()
  @words = Word.all()
  erb(:word_list)
end
