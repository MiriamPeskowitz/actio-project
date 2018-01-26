require './config/environment'

class ApplicationController < Sinatra::Base

  enable :sessions
  set :session_secret, "action_secret" 	
  use Rack::Flash

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

#show homepage 
  	get "/" do
  		session.clear
      @actions = Action.all #I put this here to bring data to the opening page. 
      binding.pry
  	  erb :'index'
  	end

    # List of people signed up -- not needed. 
    # get '/citizens' do
    #   @citizens = Citizen.all
    #   erb :'citizens/index'
    # end


helpers do
      def logged_in?
        !!session[:user_id]
      end

      def current_user
         Citizen.find(session[:user_id])
      end
    end 

end 
