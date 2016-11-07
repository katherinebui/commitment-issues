helpers do


  def send_text_message
    reminders = ["No commitment issues!", 
    "Are you tired? Don't forget to commit!", 
    "When life gives you messages, commit them.", 
    "When was the last time you committed?",
    "Commitment issues? Never again!"]


    twilio_sid = ENV['ACCOUNT_SID']
    twilio_token = ENV['AUTH_TOKEN']
    twilio_phone_number = '6194583294'

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => +16197180969,
      :body => reminders.sample
    )
    end


end 


# still need to hook user phone number up to the to