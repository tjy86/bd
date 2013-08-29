class HomeController < ApplicationController

  def new
    @now = Time.now
    start_of_day = @now.at_midnight
    @eightam = start_of_day + 28800 # 8am = 8 * 60 * 60
    @onepm = start_of_day + 46800 # 1pm = 13 * 60 * 60

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
