class Public::SchoolsController < ApplicationController
  before_action :authenticate_school!, only: [:show, :edit, :update]

  def index
    @school = current_school
  end

  def show
    @school = School.find(params[:id])
    if @school.id == current_school.id
      @menus = @school.menus.page(params[:page]).per(8)
    else
      @menus = @school.menus.where(status: :公開中).page(params[:page]).per(8)
    end
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    @school.update(school_params)
    redirect_to public_school_path
  end

  private
  def school_params
    params.require(:school).permit(:name, :email, :postcode, :street_address, :phone_number)
  end

end
