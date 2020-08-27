class Public::HomesController < ApplicationController
	def top
		if Rails.env.development?
			@random = Menu.where(status: :公開中).order("RANDOM()").limit(3)
		else
			@random = Menu.where(status: :公開中).order("RAND()").limit(3)
		end
	end

	def about
	end

	def service
	end
end
