class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.integer :tagger_id, null:false
      t.integer :tagged_id, null:false
      t.integer :post_id, null:false

      t.timestamps
    end

    add_index :tags, [:tagger_id, :tagged_id, :post_id], unique: true
  end
end
