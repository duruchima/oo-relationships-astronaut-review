class Shuttle
    @@all = []
    attr_reader :model, :capacity
    def initialize(model, capacity)
        @model = model
        @capacity = capacity
        Shuttle.all << self
    end

    def add_astronaut(astronaut, date)
        Mission.new(date, astronaut, self)
    end

    def mission_list
        Mission.all.select {|mission| mission.shuttle = self}
    end
    def current_astronauts
        mission_list.map {|missions| missions.astronaut}
    end

    def self.all
        @@all
    end
end
