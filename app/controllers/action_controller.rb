
class ActionsController < ApplicationController


#1 Read index
	get '/actions' do
		if logged_in?
			@actions = Action.all
			erb :'actions/index' 
		else redirect to '/citizens/login'
		end 
	end 

#2 Create /send form to browser
	get '/actions/new' do
		if logged_in? 
			erb :'actions/new'
		else 
			redirect to '/citizens/login'	
		end 
	end 
#3 Create/get data
	post '/actions' do
		if logged_in? 
			if current_user && params[:content] != ""
				@citizen = Citizen.find_by(:username => params[:username])
			
				@action = Action.create(:title => params[:title], :date => params[:date], :description => params[:description], :id => current_user.id)
				redirect to "/citizens/#{current_user.username}"
			else 
				redirect to '/actions/new'
			end
		else
			redirect to '/citizens/login'
		end
	end 

#4 Read/show page 
	get '/actions/:id' do
		if !logged_in?
			redirect to '/citizens/login'	
		else
			@action = Action.find_by(id: params[:id])
			erb :'actions/show'
		end 
	end 
#5 update/send form to browser
	get '/actions/:id/edit' do
		@tweet = Tweet.find_by(id: params[:id])
		if logged_in && @tweet
			if current_user.id = @tweet.user_id
				erb :'actions/edit'

			else 
				redirect to :'/actions'
			end 
		else
		redirect to '/citizens/login'
		end 
	end 

#6 update/get data from form 
	patch '/actions/:id' do
		@action = Action.findy_by_id(params[:id])
		redirect to '/citizens/login' if !logged_in?

		if params[:content] = "" || current_user.id != @tweet.user_id
			redirect to "/actions/#{@tweet.id}/edit"
		else
		    @tweet.update(:content => params[:content])
		    redirect to "/actions#{@tweet.id}"
		end 
	end 

#7 delete
	delete '/actions/:id' do
		@action = Action.find_by_id(params[:id])
		redirect to "/" if !logged_in?

		if @tweet && @tweet.user_id = current_user.id
			@tweet.delete 
			redirect to '/'
		end
	end
end



