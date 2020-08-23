class ApplicationController < ActionController::Base
	before_action :set_search

	def set_search
		@search = Menu.ransack(params[:q])
		@search_menus = @search.result
	end
end
