require 'Time'
class Record
# class Record < ApplicationRecord
    # implements Irecord
    @@number_of_records = 0
    def initialize(note="")
        @_id = @@number_of_records #primary key
        @user_id = 0 #user object
        @project_id = 0 #project object
        @total_time = 0
        @note = note
        @time_started = Time.now
        @time_stopped = Time.now
        @date_created = Time.now
        @@number_of_records += 1 #updates record constant so that user id is always unique
    end 

    def _id
        puts @_id
    end

    def _note 
        puts @note 
    end

    def write_note(note)
        @note = note 
    end
    
    def _time_stopped 
        puts @time_stopped
        return @time_stopped 
    end 

    #records when the stop button is pressed
    def stop_time #za warudo 
        @time_stopped = Time.now #time is frozen 
    end #tokio tomei 
end

# record = Record.new('Hello World')
# record2 = Record.new("second record")
# record._id
# record2._id
# record._note

