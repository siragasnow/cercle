class Public::HomesController < ApplicationController
	def top
		@random = Menu.where(status: :公開中).order("RANDOM()").limit(3)
	end

	def about
	end

	def service
	end
end
