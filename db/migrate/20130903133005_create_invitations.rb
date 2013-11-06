class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.string :status
      t.string :message

      t.timestamps
    end
  end
end
