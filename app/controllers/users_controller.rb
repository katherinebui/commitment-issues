# I NEVER COOK SPAGHETTI ESPECIALLY UNDER DURESS

# index
get '/users' do
  erb :'user/index'
end

# user new
get '/users/new' do
  @user = User.new
  erb :'users/new'
end

# users create
post '/users' do
  @user = User.new(params[:user])

  if @user.save
    session[:id] == @user.id
    redirect "/users/#{@user.id}"
  else 
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

# user show content by id
get '/users/:id' do
  # @user = User.find(params[:id])
  erb :'users/show'
end

# edit
get '/users/:id/edit' do
end

# update
put '/users/:id' do
end

# destroy
delete '/users/:id' do
end





