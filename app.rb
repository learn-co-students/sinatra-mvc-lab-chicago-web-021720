require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        pl = PigLatinizer.new
        @input_phrase = params[:user_phrase]
        @piglatinized_phrase = pl.piglatinize(@input_phrase)
        erb :output
    end

end