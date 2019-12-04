class ContactsController < ApplicationController
  def new
    @contacts = Contact.new
  end
  def index
    @contacts = Contact.all
  end
  def create
    @contacts = Contact.new(contacts_params)
    if @contacts.save
      ContactsMailer.sent_email(@contacts).deliver
      redirect_to root_path(anchor: 'contacts')
      flash[:yeap] = t(:yeap)
    else
      flash[:not] = t(:nott)
      redirect_to root_path(anchor: 'contacts')
    end
  end

  private

  def contacts_params
    params.require(:contacts).permit(:name, :email, :subject, :message)
  end
end
