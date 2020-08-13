class Menu < ApplicationRecord
	belongs_to :school
	belongs_to :genre
	attachment :image

	enum status: {
		公開中: 0,
		非公開: 1,
	}
end
