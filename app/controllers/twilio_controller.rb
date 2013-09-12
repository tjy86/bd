class TwilioController < ApplicationController

  def phone
    Time.use_zone('GMT') do
      now = Time.zone.now - 14400 # GMT less four hours = NY time
      start_of_day = now.at_midnight
      eightam = start_of_day + 28800 # 8am = 8 * 60 * 60
      onepm = start_of_day + 46800 # 1pm = 13 * 60 * 60
      @e = eightam
      @o = onepm
      @n = now
    end
    render :action => 'phone.xml.builder', :layout => false
  end
  def call
    @post_to = 'http://www.biandangnyc.com/twilio-directions'
    @response = Twilio::TwiML::Response.new do |r|
      r.Say 'hello there', :voice => 'alice'
      r.Dial :callerId => '+14159992222' do |d|
        d.Client 'jenny'
      end
    end
    render :action => 'call.html.slim', :layout => false
  end
  def twilio-directions
    #test
  end
end