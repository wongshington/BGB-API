class CreateConnectors < ActiveRecord::Migration[6.0]
  def change
    create_table :connectors do |t|
      t.references :resource_id, index: true
      t.references :topic_id, index: true
    end
  end
end
