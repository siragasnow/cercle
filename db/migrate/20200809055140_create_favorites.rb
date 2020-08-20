class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
    	t.references :school, foreign_key: true
    	t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
