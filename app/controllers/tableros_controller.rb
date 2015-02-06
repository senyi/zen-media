class TablerosController < ApplicationController

  def index
    @experiencia = Time.diff(Time.new('2007-01-01'), Time.now)[:year]
    @vacaciones = @experiencia * 14

    @contacto = Contacto.new
  end

end
