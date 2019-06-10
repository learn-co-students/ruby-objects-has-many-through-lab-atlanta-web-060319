class Doctor

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 
# creates a new `Appointment`. That
#`Appointment` should know that it belongs to the doctor
    def new_appointment(patient, date)
        Appointment.new(patient, self, date)
    end 
#iterates through all `Appointment`s and 
#finds those belonging to this doctor.
    def appointments
       Appointment.all.select do |appointment| appointment.doctor == self
    end 
    end 

    # def patients
    #     Appointment.all.collect do |appointment|
    #         appointment.

    # end 

    # The `Doctor` class needs an instance method, `#patients`, that iterates over
    # that doctor's `Appointment`s and collects the patient that belongs to each
    # 'Appointment`s.
    def appointments
        Appointments.all.select {|app| app.doctor == self}
    end
 end 
    # iterate back over the previous method
    def patients
        Appointments.collect {|app| app.patient}
    end
 end 
end 