require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # @converted_text = PigLatinizer.new(params[:user_phrase])
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params[:user_phrase])

    erb :output
  end

end
