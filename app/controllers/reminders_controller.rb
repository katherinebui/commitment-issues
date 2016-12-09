get '/reminders/start' do
  if request.xhr?
    send_text_message
    erb :'users/show'
  else
    erb :'users/show'
  end
end

get '/reminders/stop' do
  if request.xhr?
    kill
    redirect "/users/#{current_user.id}"
  else
    @errors = "Something went wrong!"
  end
end
