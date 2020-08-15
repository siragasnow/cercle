class Public::SchoolsController < ApplicationController
  def index
    @school = current_school
  end

  def show
    @school = School.find(params[:id])
    @menus = @school.menus
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
