require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
      erb :index
    end
    get '/new' do
    erb :create_puppy
  end
  post "/" do
    x = Puppy.new
  @result = x.initialize(params[:name,:breed,:age])
    :display_puppy
  end
end
