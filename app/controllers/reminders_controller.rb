get '/reminders' do 
  scheduler = Rufus::Scheduler.new

  if request.xhr?
    schedule
    erb :'users/show'
  else
    erb :'users/show'
  end
end  


private

def schedule
  scheduler.every '1h' do
    send_text_message
  end
end