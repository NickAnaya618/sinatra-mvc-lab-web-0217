require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig_latin = PigLatinizer.new
    @user_text = pig_latin.to_pig_latin(params[:user_phrase])
    erb :results
  end

end
