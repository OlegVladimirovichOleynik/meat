class ContactsMailer < ApplicationMailer
  def sent_email(contacts)
    @contacts = contacts
    mail(to: 'tobacco@newyorkerclub.ru', subject: "new email")
  end
end
