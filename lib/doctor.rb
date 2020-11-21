
class Doctor
    attr_accessor :name, :patient, :appointment, :date

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select { |appointment| appointment if appointment.doctor == self }
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        Appointment.all.collect { |appt| appt.patient if appt.doctor == self }
    end

end