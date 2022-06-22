class Record 
    @time_started = ""
    @time_stopped = ""
    @date_created = ""
    @date_updated = ""

    def initialize
      @time_started = start()
      @date_created = getCurrentDate()
      update()
    end 

    def getCurrentTime
      return Time.now.strftime("%H:%M:%S")
    end

    def getCurrentDate
      return Time.now.strftime("%d/%m/%Y")
    end 

    def start
      @time_started = getCurrentTime()
    end 

    def stop 
      @time_stopped = getCurrentTime()
    end

    def update
      @date_updated = getCurrentDate()
    end
end






r = Record.new

r2 = Record.new

p r,r2
