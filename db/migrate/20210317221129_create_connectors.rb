class CreateConnectors < ActiveRecord::Migration[6.0]
  def change
    create_table :connectors do |t|
      t.integer :resource_id
      t.integer :topic_id
    end
  end
end
