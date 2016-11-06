helpers do
  def send_text_message

    twilio_sid = ENV['ACCOUNT_SID']
    twilio_token = ENV['AUTH_TOKEN']
    twilio_phone_number = '6194583294'

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => +16197180969,
      :body => "WHATEVER I WANT TO SAY"
    )
    end


end 