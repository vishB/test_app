class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :user_id
      t.integer :friend
      t.string :relation

      t.timestamps
    end
  end
end
