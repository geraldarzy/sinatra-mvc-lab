require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end
    post '/piglatinize' do
        @user_input = params[:user_phrase]
        @h = PigLatinizer.new
        
        erb :piglatinized
    end

    
end