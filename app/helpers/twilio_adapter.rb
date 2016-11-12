helpers do

  def send_text_message
    reminders = ["No commitment issues!", 
    "Are you tired? Don't forget to commit!", 
    "When life gives you messages, commit them.", 
    "When was the last time you committed?",
    "Commitment issues? Never again!",
    "Baby, you are the one- I am committed to you.",
    "Commitment isn't as scary as it seems.",
    "Sometimes you just have to stop and commit.",
    "I have 99 problems and commitment issues ain't one.",
    "Stop playing with my feelings and commit!",
    "Baby, I'm not like the rest- please commit.",
    "The only thing I am committed to are my commitment issues"]


    twilio_sid = ENV['ACCOUNT_SID']
    twilio_token = ENV['AUTH_TOKEN']
    twilio_phone_number = '6194583294'

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => +0000000000,
      :body => reminders.sample
    )
  end


  def start_scheduler
    scheduler = Rufus::Scheduler.new
    @job = scheduler.every '1h' do
      send_text_message
    end
    scheduler.join
  end

  # def kill
  #   @job.kill
  # end

  # def running_thread
  #   # puts Thread.list.select {|thread| thread.status == "run" }
  #   puts scheduler.select(:every)
  # end

end 








  # def init_scheduler
  #   @scheduler = Rufus::Scheduler.new
  #   return @scheduler
  # end

  # def start_scheduler
  #   init_scheduler
  #     @job = @scheduler.every '10s' do
  #       send_text_message
  #   end
  #   @scheduler.join
  # end


  # def stop_scheduler
  #   init_scheduler
  #  if @job.running 
  #     puts " FUCK ITS STILL RUNNING!"
  #   end  
  # end



# def start_scheduler
#     scheduler = Rufus::Scheduler.new
#       scheduler.every '1h' do
#         send_text_message
#     end
#     scheduler.join
#   end



  # def start_scheduler
  #   scheduler = Rufus::Scheduler.new
  #     scheduler.in '3s' do
  #       send_text_message
  #   end
  #   scheduler.join
  # end


