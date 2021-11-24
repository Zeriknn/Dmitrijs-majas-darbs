class Pages

  attr_accessor :registration_page

  def initialize
    @registration_page = RegistrationForm.new
    
  end
end