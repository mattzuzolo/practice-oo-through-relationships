class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment (patient, date)
    #that takes in a date and an instance of the Patient class and creates a new appointment.
    Appointment.new(patient, self, date)
  end

  def appointments
    #that iterates through all appointments and finds those belonging to this doctor.
    Appointment.all.select do |appointment_instance|
      appointment_instance.doctor == self
    end
  end

  def patients
    #that iterates over that doctor's appointments and collects the patient that belongs to each appointment.
    appointments.map do |appointment_instance|
      appointment_instance.patient
    end
  end

end
