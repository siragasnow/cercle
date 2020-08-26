class Admin::MenusController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@menus = Menu.page(params[:page]).per(20).reverse_order
  end

  def edit
  	@menu = Menu.find(params[:id])
  end

  def update
  	@menu = Menu.find(params[:id])
  	@menu.update(menu_params)
  	redirect_to admin_menus_path
  end

  private
  def menu_params
  	params.require(:menu).permit(:status)
  end

end
