# require 'rufus-scheduler'

get '/reminders/start' do 
  if request.xhr?
    # p "in xhr"
    # start_scheduler
    send_text_message
    # p running_thread
    erb :'users/show'
  else
    erb :'users/show'
  end
end  

get '/reminders/stop' do
  if request.xhr?
    p "What is my life?"
    # kill
    redirect "/users/#{current_user.id}"
  else
    @errors = "You done fucked"
  end
end
