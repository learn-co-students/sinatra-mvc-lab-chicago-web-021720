require_relative 'config/environment'

class App < Sinatra::Base

    get('/') {
        erb :user_input
    }

    post('/piglatinize') {
        @phrase = params[:user_phrase]
        erb :results
    }

end