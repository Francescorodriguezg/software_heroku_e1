class CreatePublications < ActiveRecord::Migration[6.1]
  def change
    create_table :publications do |t|
      t.string :club_name
      t.string :club_address
      t.string :sport_name
      t.timestamps
    end
  end
end
