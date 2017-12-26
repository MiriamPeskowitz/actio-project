
class ActionsController < ApplicationController


#1 Read index
	get '/actions' do
		if logged_in?
			@actions = current_user.actions
			erb :'actions/index' 
		else 
			redirect to '/citizens/login'
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

#2.5 slug

	# get 'actions/:slug' do
	# 	@action = Action.find_by_slug(params[:slug])
	# 	erb :'actions/show'
	# end 	
#3 Create/get data
	post '/actions' do
		if logged_in? 

			if current_user && params[:description] != ""
				# @citizen = Citizen.find_by(:username => params[:username])
				@action = Action.create(:title => params[:title], :date => params[:date], :description => params[:description], :citizen_id => current_user.id)
	
				redirect to "/actions/#{@action.id}"
			
				# or actions/#{@action.slug} how does this work? yes -- to get username? 
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
		# possible: use slug? Ask coach 
		# @action = Action.find_by_slug(params[:slug])
		# @action.update(params[:title], params[:date], params[:description])

		@action= Action.find_by(:id => params[:id])
		if logged_in? && @action
			if current_user.id == @action.citizen_id
				erb :'actions/edit'
			else 
				redirect to '/actions'
			end 
		else
		redirect to '/citizens/login'
		end 
	end 

#6 update/get data from form 
	patch '/actions/:id' do
		@action = Action.find_by_id(params[:id])
		redirect to '/citizens/login' if !logged_in?
# how would I update several fields? 
		if params[:description] == "" || current_user.id != @action.citizen_id
			redirect to "/actions/#{@action.id}/edit"
		else
		    @action.update(:description => params[:description])
		    redirect to "/actions/#{@action.id}"
		end 
	end 

#7 delete
	delete '/actions/:id' do
		@action = Action.find_by_id(params[:id])
		redirect to "/" if !logged_in?

		if @action && @action.citizen_id == current_user.id
			@action.delete 
			redirect to '/'
		end
	end
end



