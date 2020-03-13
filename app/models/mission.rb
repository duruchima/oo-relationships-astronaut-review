class Mission
    @@all = []
    attr_accessor :date, :astronaut, :shuttle
    def initialize(date, astronaut, shuttle)
        @date = date
        @astronaut = astronaut
        @shuttle = shuttle
        Mission.all << self
    end

    def launch_date
        @date
    end

    def self.all
        @@all
    end
end
