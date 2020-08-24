class ApplicationController < ActionController::Base
	before_action :set_search

	def set_search
		@search = Menu.where(status: :公開中).ransack(params[:q])
		@search_menus = @search.result.page(params[:page]).per(8)
	end
end
