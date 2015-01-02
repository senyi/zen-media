class TablerosController < ApplicationController
  def index
  end

  def sendmail
    ContactoMailer.contacto( params[:nombre], params[:email], params[:titulo], params[:mensaje]).deliver

    respond_to do |format|
      format.html { redirect_to("/#contact", notice: 'Mensaje enviado correctamente.')
 }
      format.js
    end
  end
end
