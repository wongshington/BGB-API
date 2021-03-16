class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :resource
      t.string :phone
      t.string :description
      t.string :hours
      t.float :distance

    end
  end
end
