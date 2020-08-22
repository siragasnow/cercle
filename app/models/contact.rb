class Contact < ApplicationRecord
	belongs_to :school


	enum contact_status: {
		対応待ち: 0,
		対応済み: 1,
	}
end
