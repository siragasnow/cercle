class Menu < ApplicationRecord
	belongs_to :school
	belongs_to :genre
	has_many :favorites, dependent: :destroy

	attachment :image

	enum status: {
		公開中: 0,
		非公開: 1,
	}
	validates :title, presence: true
  	validates :genre_id, presence: true
  	validates :staple_food, presence: true
  	validates :main_dish, presence: true
  	validates :side_dish, presence: true
  	validates :soup, presence: true
  	validates :dessert, presence: true
  	validates :drink, presence: true
  	validates :comment, presence: true

	def favorited_by?(school)
    favorites.where(school_id: school.id).exists?
  end
end
