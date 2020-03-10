require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do 
        erb :user_input
    end

    post "/piglatinize" do
        phrase = params[:user_phrase]
        new_p = PigLatinizer.new 
        @results = new_p.piglatinize(phrase)
        erb :result
    end
end