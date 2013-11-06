class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.integer :user_id
      t.string :name
      t.integer :age
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :pin
      t.string :orientation

      t.timestamps
    end
  end
end
