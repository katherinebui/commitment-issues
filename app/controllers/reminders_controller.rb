# require 'rufus-scheduler'

get '/reminders' do 
  if request.xhr?
    p "in xhr"
    start_scheduler
    erb :'users/show'
  else
    erb :'users/show'
  end
end  


delete '/reminders' do
  scheduler.shutdown
end

