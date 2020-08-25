class Public::MenusController < ApplicationController
  before_action :authenticate_school!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @menus = Menu.where(status: :公開中).page(params[:page]).per(8).reverse_order
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    @menu.school_id = current_school.id
    @menu.save
    redirect_to root_path
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])
    @menu.update(menu_params)
    redirect_to public_menu_path
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to public_menus_path
  end

  private
  def menu_params
    params.require(:menu).permit(:genre_id, :title, :staple_food, :main_dish, :side_dish, :soup, :dessert, :drink, :energy, :protein, :fat, :sodium, :comment, :image, :status)
  end

end
