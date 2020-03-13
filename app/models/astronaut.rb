class Astronaut
    @@all = []
    attr_reader :name, :specialty 
    attr_accessor 
    def initialize(name, age, specialty = nil)
        @name = name
        @specialty = specialty
        @age = age
        Astronaut.all << self
    end

    def mission_list
        Mission.all.select {|missions|missions.astronaut = self}
    end

    def current_shuttle
        mission_list.map {|missions| missions.shuttle}
    end

    def self.all
        @@all
    end

    def join_shuttle(shuttle, date)
        Mission.new(date, self, shuttle)
    end

end
