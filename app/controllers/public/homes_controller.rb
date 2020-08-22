class Public::HomesController < ApplicationController
	def top
		@random = Menu.order("RANDOM()").limit(3)
	end

	def about
	end

	def service
	end
end
