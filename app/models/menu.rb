class Menu < ApplicationRecord
	belongs_to :school
	belongs_to :genre
	has_many :favorites, dependent: :destroy

	attachment :image

	enum status: {
		公開中: 0,
		非公開: 1,
	}
	def favorited_by?(school)
    favorites.where(school_id: school.id).exists?
  end
end
