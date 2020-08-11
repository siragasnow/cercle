class Menu < ApplicationRecord
	belongs_to :school
	belongs_to :genre
	attachment :image
end
