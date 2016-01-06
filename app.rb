require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scis')

get('/') do
  File.read(File.join('public', 'main.css'))
  @title = "Rock Paper Scissors"
  erb(:index)
end

get('/results') do
  @title = "Results"
  @move = params.fetch('move').rock_paper_scis
  erb(:results)
end
