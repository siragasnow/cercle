class Admin::ContactsController < ApplicationController
  def index
  	@contacts = Contact.all
  end

  def show
  end

  def update
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message, :contact_status)
  end

end
