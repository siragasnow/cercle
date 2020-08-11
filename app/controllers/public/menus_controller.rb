class Public::MenusController < ApplicationController
  def index
  end

  def show
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
  end

  def update
  end

  def destroy
  end

  private
  def menu_params
    params.require(:menu).permit(:genre_id, :title, :staple_food, :main_dish, :side_dish, :soup, :dessert, :drink, :energy, :protein, :fat, :sodium, :comment, :image)
  end
end
