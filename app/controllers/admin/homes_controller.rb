class Admin::HomesController < ApplicationController
	before_action :authenticate_admin!

	def top
		@admin = Admin.all
	end
end
