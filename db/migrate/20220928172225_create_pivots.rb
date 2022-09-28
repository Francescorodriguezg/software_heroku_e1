class CreatePivots < ActiveRecord::Migration[6.1]
  def change
    create_table :pivots do |t|
      t.integer :user_id
      t.integer :moderator_id
      t.integer :message_id
      t.timestamps
    end
  end
end
