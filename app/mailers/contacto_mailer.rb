class ContactoMailer < ActionMailer::Base

  def contacto(contacto)
    @contacto = contacto
    mail to: "contacto.zmedia@gmail.com", cc: ["jdsampayo@gmail.com","senyib@gmail.com"], subject: "Contacto a Zen Media", from: "contacto.zmedia@gmail.com"
  end
end
