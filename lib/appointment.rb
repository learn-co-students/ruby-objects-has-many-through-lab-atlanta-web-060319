require "pry"



class Appointment

    @@all = []

    attr_accessor :name, :doctor, :patient

    def initialize(name, doctor, patient)
        @name = name
        @doctor = doctor
        @patient = patient
        @@all << self
    end

    def self.all
        @@all
    end


end


# The Appointment class needs a class variable @@all that begins as an empty array.
# The Appointment class needs a class method .all that lists each Appointment in the class variable.
# An Appointment should be initialized with a date (as a string, like "Monday, August 1st"), a patient, and a doctor. The Appointment should be saved in the @@all array.

# Appointment
#   .all
#     knows about all appointments that have been created (FAILED - 6)
#   #new
#     initializes with a date, patient, and doctor (FAILED - 7)
#   #patient
#     belongs to a patient (FAILED - 8)
#   #doctor
#     belongs to a doctor (FAILED - 9)
