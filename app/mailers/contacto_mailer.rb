class ContactoMailer < ActionMailer::Base

  def contacto(contacto)
    @contacto = contacto
    mail to: "contacto.zmedia@gmail.com", subject: "Contacto a Zen Media", from: "contacto.zmedia@gmail.com"
  end
end
