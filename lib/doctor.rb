require "pry"

class Doctor

    @@all = []

    attr_reader :name


    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(name, self, patient)

    end

    def appointments
        Appointment.all.select {|a| a.doctor == self}
    end

    def patients
        self.appointments.collect {|a| a.patient}
    end 

end

# The Doctor class needs a class variable @@all that begins as an empty array.
# The Doctor class needs a class method .all that lists each doctor in the class variable.
# A doctor should be initialized with a name and be saved in the @@all array.
# The Doctor class needs an instance method, #new_appointment, that takes in a an instance of the Patient class and a date, and creates a new Appointment. That Appointment should know that it belongs to the doctor
# The Doctor class needs an instance method, #appointments, that iterates through all Appointments and finds those belonging to this doctor.
# The Doctor class needs an instance method, #patients, that iterates over that doctor's Appointments and collects the patient that belongs to each Appointments.

# Doctor
#   #name
#     has a name (FAILED - 1)
#   #new
#     initializes with a name and adds itself to an array of all doctors (FAILED - 2)
#   #new_appointment
#     given a date and a patient, creates a new appointment (FAILED - 3)
#   #appointments
#     has many appointments (FAILED - 4)
#   #patients
#     has many patients, through appointments (FAILED - 5)