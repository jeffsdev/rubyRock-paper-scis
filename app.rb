require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scis')

get('/') do
  erb(:index)
end

get('/results') do
  @move = params.fetch('move').rock_paper_scis
  erb(:results)
end
