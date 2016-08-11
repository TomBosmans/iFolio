class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :profile_picture
      t.text :bio

      t.timestamps null: false
    end
  end
end
