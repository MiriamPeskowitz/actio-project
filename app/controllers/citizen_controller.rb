class CitizensController < ApplicationController

#1 send SIGNUP form to browser
  	get '/citizens/signup' do
      
  		if logged_in? 
  			redirect to '/actions' 
  		else
  			erb :'citizens/signup'
  		end 
  	end

#2 get SIGNUP data from form and CREATE citizen entry in db
  	post '/citizens/signup' do 
  		if params[:username] == '' ||  params[:email] ==  "" || params[:password] == ""
  			flash[:notice] = "Fill in all the fields, okay?"
        redirect to '/citizens/signup'
  		else
  			@citizen = Citizen.create(:username => params[:username], :email => params[:email], :password => params[:password])
        session[:user_id] = @citizen.id
  			redirect to '/actions'
  		end 
  	end 

 #3 Send LOGIN form to browser
  	get '/citizens/login' do
    
  		if !logged_in?
  			 erb :'citizens/login'
  		else
  			 redirect to '/actions'
  		end 
  	end 	

 #4 Read LOGIN data from form, send to db/sessions 
   	post '/citizens/login' do
      redirect to '/actions' if logged_in?
      @citizen = Citizen.find_by(username: params[:username])
      
  	 	if @citizen && @citizen.authenticate(params[:password])
  	 		 session[:user_id] = @citizen.id
  		   redirect to '/actions'
  	  else
          flash[:notice] = "You've got a lot on your mind, but we do need a valid Username and Password."
  	 	    redirect to '/'
  	  end
   	end 

  #5 LOGOUT/clear session 
  	get '/citizens/logout' do
  		if logged_in?
  			session.clear
  			erb :'citizens/goodbye'
  		else 
  			redirect to '/citizens/login'
  		end 
  	end 

  #6 SHOW ALL ACTIONS on opening page -moved up 
    # get '/citizens/show'
    #   @actions = Action.all
    #    erb :'citizens/show'
  end
