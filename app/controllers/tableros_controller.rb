class TablerosController < ApplicationController
  def index
  end

  def sendmail
    puts "parametro params[:nombre] "
    ContactoMailer.contacto( params[:nombre], params[:email], params[:titulo], params[:mensaje]).deliver
    redirect_to "#contact", notice: 'Mensaje enviado correctamente.'
  end
end
