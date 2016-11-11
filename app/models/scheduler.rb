class Scheduler < ActiveRecord::Base

  def initialize
    @scheduler = Rufus::Scheduler.new
  end

  def self.start_scheduler
    @scheduler.every '10s' do
      send_text_message
    end
    @scheduler.join
  end

  def self.stop_scheduler
    @scheduler.stop
  end

end
