class OrderController < ApplicationController

  def pickup
    Time.use_zone('GMT') do
      now = Time.zone.now - 14400 # GMT less four hours = NY time
      start_of_day = now.at_midnight
      eightam = start_of_day + 28800 # 8am = 8 * 60 * 60
      onepm = start_of_day + 46800 # 1pm = 13 * 60 * 60
      @e = eightam
      @o = onepm
      @n = now
      if now > eightam && now < onepm && Date.today.cwday >= 1 && Date.today.cwday <= 5
        render "pickup"
      else
        render "closed"
      end
    end
  end
  def soldout
  end
  def closed
  end
  def thankyou
  end
end
