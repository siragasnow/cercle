require 'rails_helper'

RSpec.describe "Menus", type: :request do
	describe '新規投稿ページ' do
		context "新規投稿ページが正しく表示される" do
			before do
				get new_public_menu_path
			end
			it 'リクエストは200 OKとなること' do
				expect(response.status).to eq 200
			end
			it 'タイトルが正しく表示されていること' do
        		expect(response.body).to include("cercle")
      		end
		end
	end
end