class AddUserIdToPublications < ActiveRecord::Migration[6.1]
  def change
    add_column :publications, :user_id, :int
  end
end
