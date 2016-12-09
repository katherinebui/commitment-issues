get '/users/new' do
  @user = User.new
  erb :'users/new'
end

post '/users' do
  if params[:password_confirmation] == params[:user][:password]
    @user = User.new(params[:user])

    if @user.save
      session[:id] = @user.id
      redirect "/users/#{@user.id}"
    else
      @errors = @user.errors.full_messages
      erb :'users/new'
    end

  else
    @errors = ["Passwords do not match!"]
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  if current_user.id == @user.id
    erb :'users/show'
  else
    @errors = "Restricted"
  end
end

get '/users/:id/edit' do
  @user = User.find(params[:id])
  if request.xhr?
    erb :'partials/_userSetting', layout: false, locals: {user: @user}
  else
    erb :'users/edit'
  end
end

put '/users/:id' do
  @user = User.find(params[:id])
  @user.update(params[:user])
  redirect "/users/#{@user.id}"
end
