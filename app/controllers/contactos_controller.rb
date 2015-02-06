class ContactosController < ApplicationController

  def create
    @contacto = Contacto.new( contacto_params )

    respond_to do |format|
      if @contacto.save
        ContactoMailer.contacto( @contacto ).deliver
        format.html { redirect_to("/#contact", notice: 'Mensaje enviado correctamente.') }
        format.json { render json: { message: "Ok", status: 302 } }
      else
        format.html { render action: "/#contact" }
        format.json { render json: { errors: @contacto.errors}, status: 422 }
      end
    end
  end

  private
    def contacto_params
      params.require(:contacto).permit(:nombre, :email, :titulo, :mensaje)
    end

end