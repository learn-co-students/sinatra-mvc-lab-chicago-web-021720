require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end 

    post '/piglatinize' do 
        @phrase = params[:user_phrase]
        p @phrase
        @piglatinized_text = PigLatinizer.new.piglatinize(@phrase)
        #erb :create
    end 

    


end