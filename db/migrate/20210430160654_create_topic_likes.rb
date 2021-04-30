class CreateTopicLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :topic_likes do |t|
      t.integer :user_id, null:false
      t.integer :topic_id, null:false

      t.timestamps
    end

    add_index :topic_likes, [:user_id, :topic_id], unique: true
  end
end
