require 'sinatra'
require 'sinatra/activerecord'
require 'require_all'
require 'oj'
require_all 'models'
require 'sinatra/reloader' if development?
require 'dotenv/load' if development?
require 'pry' if development?

get '/' do
  redirect '/todos'
end

get '/todos' do
  return "#{Todo.todo_items}"
end

post '/new' do

end

put '/update' do

end
