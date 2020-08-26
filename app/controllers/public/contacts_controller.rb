class Public::ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
    @contact.school_id = current_school.id if current_school
    if @contact.save
      redirect_to public_contacts_confirm_path
    else
      render 'new'
    end
  end

  def confirm
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message, :contact_status)
  end

end
