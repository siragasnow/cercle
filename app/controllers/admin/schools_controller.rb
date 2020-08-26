class Admin::SchoolsController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@schools = School.page(params[:page]).per(20).reverse_order
  end

  def show
  	@school = School.find(params[:id])
  end
end
