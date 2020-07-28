require "pry"

def clock_angle(time)
    # code your solution here
    #1 minute == 6 degrees
    #1 hour == 30 degrees
    #9 hours and 0 minutes == 270

    #if hours > minutes then hours-minutes
    #if hours < minutes then 360 - minAngle + hourAngle

    time_array = time.split(":")
    minute = time_array[1].to_i*6
    min_inc = minute.to_f/360.0 * 30.0
    hour = time_array[0].to_i*30
    hour_angle = hour + min_inc

 # binding.pry
    if hour_angle == 360
      hour_angle = 0
    end
    if minute == 360
      minute = 0
    end
# binding.pry
    if hour_angle > minute
      hour_angle - minute
    elsif minute > hour_angle
      (360-minute)+hour_angle
    elsif minute == hour_angle
      0
    end
end


#(minute_angle/360 * 30) + hour_degrees
