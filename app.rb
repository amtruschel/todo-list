require 'sinatra'
require 'sinatra/activerecord'
require 'require_all'
require 'oj'
require_all 'models'
require 'sinatra/reloader' if development?
require 'dotenv/load' if development?
require 'pry' if development?

get '/' do
  return ''
end

get '/api/todos' do
  return "#{Todo.todo_items}"
end

post '/api/new-post' do

end

put '/api/post-update' do

end
