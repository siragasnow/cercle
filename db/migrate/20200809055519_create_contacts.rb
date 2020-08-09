class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
    	t.integer :school_id, null: false
    	t.string :name, null: false
    	t.string :email, null: false
    	t.text :message, null: false
    	t.integer :contact_status, default: 0, null: false

      t.timestamps
    end
  end
end
