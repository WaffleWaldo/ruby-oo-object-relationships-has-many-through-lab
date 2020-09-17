class Patient
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def appointments
        Appointment.all.select {|app| app.patient == self}
    end 

    def doctors
        self.appointments.collect {|app| app.doctor}
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end
end