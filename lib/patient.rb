
class Patient
    attr_accessor :name, :doctor, :appointment

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select { |appt| appt if appt.patient == self }
    end

    def doctors
        Appointment.all.collect { |appt| appt.doctor }
    end

end