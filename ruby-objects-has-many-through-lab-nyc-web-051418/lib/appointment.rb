class Appointment

  attr_accessor :name, :patient, :doctor

  @@all = []

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end
