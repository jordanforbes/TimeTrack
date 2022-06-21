#todo: turn into a class
#todo: write documentation for each method

class TimeCalculator

  @@total_minutes = 0
  @@hour_times = ["1:00","3:29","0:49","1:19","1:05","1:10","1:13","3:06"]
  @@minute_times = []
  

  def initialize()
  end

  #takes in hours as a string and converts it into minutes as an integer
  #EX: "01:01" => 61
  def hours_to_minutes(hhmm)

    split_time = hhmm.split(":")
    for num in split_time do
      num = num.to_i
    end
    time_in_minutes = split_time[0].to_i * 60 + split_time[1].to_i
    return time_in_minutes
  end
    

  def minutes_to_hours(minutes)
     hr = (minutes)/60
     min = (minutes)%60
     return "#{hr}:#{min}"
  end


  def total_time_worked(times_in_hours= @@hour_times,times_in_minutes= @@minute_times,total_minutes_worked=@@total_minutes)
    for time in times_in_hours do 
      times_in_minutes.append(hours_to_minutes(time))
    end
    
    for time in times_in_minutes do 
      total_minutes_worked += time
    end

    return minutes_to_hours(total_minutes_worked)
  end
end

day = TimeCalculator.new

puts day.total_time_worked()

