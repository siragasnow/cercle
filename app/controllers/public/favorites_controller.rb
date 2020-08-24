class Public::FavoritesController < ApplicationController
  before_action :authenticate_school!

  def index
    @menus = current_school.favorite_menus.page(params[:page]).per(8)
  end

  def create
  	@menu = Menu.find(params[:menu_id])
  	favorite = @menu.favorites.new(school_id: current_school.id)
  	favorite.save
  	redirect_to request.referer
  end

  def destroy
  	@menu = Menu.find(params[:menu_id])
  	favorite = @menu.favorites.find_by(school_id: current_school.id)
  	favorite.destroy
  	redirect_to request.referer
  end

end
