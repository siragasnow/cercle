class Admin::SchoolsController < ApplicationController
  before_action :authenticate_admin!

  def index
  	@schools = School.all
  end

  def show
  	@school = School.find(params[:id])
  end
end
