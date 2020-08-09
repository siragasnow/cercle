class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
    	t.integer :school_id, null: false
    	t.integer :genre_id, null: false
    	t.string :title, null: false
    	t.string :staple_food, null: false
    	t.string :main_dish, null: false
    	t.string :side_dish, null: false
    	t.string :soup, null: false
    	t.string :dessert, null: false
    	t.string :drink, null: false
    	t.integer :energy, null: false
    	t.float :protein, null: false
    	t.float :fat, null: false
    	t.float :sodium, null: false
    	t.text :comment, null: false
    	t.string :image_id

      t.timestamps
    end
  end
end
