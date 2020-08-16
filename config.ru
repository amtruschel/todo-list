require './app'

use Rack::Cors do
  allow do
    origins 'localhost:3000'

    resource '/api/new-post', headers: :any, methods: :post
    resource '/api/update-post', headers: :any, methods: :put
    resource '/api/todos', headers: :any, methods: :get
  end
end

run Sinatra::Application
