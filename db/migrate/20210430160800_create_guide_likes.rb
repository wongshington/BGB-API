class CreateGuideLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :guide_likes do |t|
      t.integer :user_id, null: false
      t.integer :guide_id, null: false

      t.timestamps
    end

    add_index :guide_likes, [:user_id, :guide_id], unique: true
  end
end
