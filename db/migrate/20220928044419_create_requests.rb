class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :moderator_id
      t.text :message
      t.boolean :status
      t.timestamps
    end
  end
end
