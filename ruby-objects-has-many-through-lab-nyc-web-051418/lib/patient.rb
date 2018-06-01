class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    #that iterates through the appointments array and returns appointments that belong to the patient.
    Appointment.all.select do |appointment_instance|
        appointment_instance.patient == self
    end
  end

  def new_appointment (doctor, date)
    #that takes in an argument of a doctor and a date and creates a new appointment.
    Appointment.new(self, doctor, date)
  end



  def doctors
    # that iterates over that patient's appointments and collects the doctor that belongs to each appointment.
    appointments.map do |appoint_instance|
      appointment_instance.doctor
    end
  end




end
