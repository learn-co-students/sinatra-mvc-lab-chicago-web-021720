require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base
attr_accessor :analyzed_text

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do 
        @analyzed_text = PigLatinizer.new(params[:user_text])
        erb :results
    end
    

end