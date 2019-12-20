class Doctor
	attr_reader :name
	@@all = []

	def initialize(name)
		@name = name
		@@all.push(self)
	end

	def self.all
		@@all
	end

	def new_appointment(patient, date)
		Appointment.new(date, patient, self)
	end

	def appointments
		Appointment.all.select {|appointment|
			appointment.doctor == self
		}
	end

	def patients
		patients = []
		Appointment.all.each {|appointment|
			patients.push(appointment.patient) if appointment.doctor == self
		}
		patients
	end
end
