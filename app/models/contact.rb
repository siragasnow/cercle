class Contact < ApplicationRecord
	belongs_to :school, optional: true

	validates :name, presence: true
  	validates :email, presence: true
  	validates :message, presence: true

	enum contact_status: {
		対応待ち: 0,
		対応済み: 1,
	}
end
