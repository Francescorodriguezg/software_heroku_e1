class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :message
      t.boolean :status
      t.integer :user_id
      t.integer :moderator_id
      t.timestamps
    end
  end
end
