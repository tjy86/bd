class HomeController < ApplicationController

  def new
    Time.use_zone('GMT') do
      now = Time.zone.now - 14400 # GMT less four hours = NY time
      start_of_day = now.at_midnight
      eightam = start_of_day + 28800 # 8am = 8 * 60 * 60
      onepm = start_of_day + 46800 # 1pm = 13 * 60 * 60
      @e = eightam
      @o = onepm
      @n = now
    end
  end
  def story
  end
  def schedule
  end
  def events
  end
  def contact
  end
end
