require 'sinatra/base'

class App < Sinatra::Application
  TASKS = []
  get '/' do
    erb :index, :locals => {:tasks => TASKS}
  end
  get '/new' do
    erb :add_task
  end
  post '/' do
    TASKS << params[:task]
    redirect '/'
  end
end