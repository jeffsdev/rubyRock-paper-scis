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
  if @move[1] == "rock"
    @url = "http://i.imgur.com/FHbBo9M.jpg"
  elsif @move[1] == "paper"
    @url = "http://i.imgur.com/GgGuUyl.gif"
  else
    @url = "http://i.imgur.com/8v82YVK.jpg"
  end
  erb(:results)
end
