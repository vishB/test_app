class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.string :address1
      t.string :address2
      t.string :profession

      t.timestamps
    end
  end
end
