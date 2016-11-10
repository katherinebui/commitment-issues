# USERS INDEX
# get '/users' do
#   @users = User.all
#   erb :'users/index'
# end

# USERS NEW
get '/users/new' do
  @user = User.new
  erb :'users/new'
end

# USERS CREATE
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

# USERS SHOW
get '/users/:id' do
  @user = User.find(params[:id])
  if current_user.id == @user.id
    erb :'users/show'
  else 
    @errors = "Restricted"
  end
end

# EDIT
get '/users/:id/edit' do
  p "*" * 100
  p params
  @user = User.find(params[:id])
  if request.xhr?
    erb :'partials/_userSetting', layout: false, locals: {user: @user}
  else 
    erb :'users/edit'
  end
end

# UPDATE
put '/users/:id' do 
  @user = User.find(params[:id])
  @user.update(params[:user])
  redirect "/users/#{@user.id}"
end

get '/users/:id/text' do
  @users = User.find(params[:id])
  @user_id = params[:id]
  if request.xhr?
    # @user_id.to_json
    send_text_message
  else
    redirect "/users/#{@user.id}"
  end
end







