require 'pry'

def clock_angle(time)
    # code your solution here
    hours = time.split(':')[0].to_i
    minutes = time.split(':')[1].to_i
    total_minutes = hours * 60 + minutes
    hour_angle = total_minutes * 0.5
    minute_angle = minutes * 6
    angle = hour_angle - minute_angle
    if angle < 0 || angle == 360
        return 360 - angle.abs
    else
        return angle
    end
end

