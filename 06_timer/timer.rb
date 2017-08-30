class Timer
    attr_accessor :seconds
    def initialize
        @show_time = "00:00:00"
        @hours = 0
        @minutes = 0
    end
    def seconds
        if @seconds == nil
            @seconds = 0
        end
        @seconds
    end
    def time_string
        if @seconds > 60
            @minutes = @seconds/60
            @seconds -= @minutes * 60
        end
        
        if @minutes > 60
            @hours = @minutes/60
            @minutes -= @hours * 60
        end
        
        #put seconds in the timer string
        if @seconds > 0
            if @seconds.to_s.length == 2
                @show_time[-2..-1] = @seconds.to_s
            else if @seconds.to_s.length == 1
                @show_time[-1] = @seconds.to_s
            end
            end
        end
        
        #put minutes in the timer string
        if @minutes > 0
            if @minutes.to_s.length == 2
                @show_time[-5..-4] = @minutes.to_s
            else if @minutes.to_s.length == 1
                @show_time[-4] = @minutes.to_s
            end
            end
        end
        
        #put hours in the timer string
        if @hours > 0
            if @hours.to_s.length >= 2
                @show_time[0..1] = @hours.to_s
            else if @hours.to_s.length == 1
                @show_time[1] = @hours.to_s
            end
            end
        end
        
        return @show_time
    end
end