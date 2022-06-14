require 'Time'
# class Record < ApplicationRecord
class Record
    # include Irecord 
    def initialize(note="")
        @_id = 1 #primary key
        @user_id = 1 #increments by one based on the highest user id
        @project_id = 1 #same with above but for project id 
        @total_time = 0
        @note = note
        @time_started = Time.now
        @time_stopped = "00:00"
        @date_created = Time.now
    end 

    def _id
        puts @id
    end

    def _note 
        puts @note 
    end

    def write_note(note)
        @note = note 
    end
end

record = Record.new('Hello World')
record._id
record._note

