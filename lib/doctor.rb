class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @appointments = []
    @@all << self
  end
  
  def add_appointment(appointment)
    @appointments << appointment
  end
  
  def appointments
    @appointments
  end
  
  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end
  
  
end