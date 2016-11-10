get '/reminders' do 
  send_text_message
  if request.xhr?
    erb :'users/show'
  else
    erb :'users/show'
  end
end