get '/users/new' do
	erb :"/users/new"
end

post '/users' do
	@user = User.new(params[:user])

	if @user.save
		redirect "/sessions/new"
	else
		@error = "@user.errors.full_messages"
		erb :"/users/new"
	end

end

get '/users/:id' do
	@user = User.find(params[:id])
	erb :"/users/show"
end