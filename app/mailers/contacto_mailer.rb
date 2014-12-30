class ContactoMailer < ActionMailer::Base

  def contacto(nombre, correo, titulo, mensaje)
    @mensaje = mensaje
    @nombre = nombre
    @correo = correo
    @titulo = titulo
    mail to: "contacto.zmedia@gmail.com", subject: "Contacto a zen media", from: correo
  end
end
