class Contacto < ActiveRecord::Base
  validates_presence_of :nombre, :email, :titulo, :mensaje
end
