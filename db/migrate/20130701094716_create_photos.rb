class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :album_id
      t.string :name
      t.text :description
      t.string :location
      t.string :privacy
      t.binary :binary_data

      t.timestamps
    end
  end
end
