require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    pig = PigLatinizer.new
    @latinizedphrase = pig.piglatinize(params[:user_phrase])
    erb :latinphrase
  end
end
