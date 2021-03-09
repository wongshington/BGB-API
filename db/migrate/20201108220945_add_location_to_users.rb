class AddLocationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :location, :string, after: :date_of_birth
  end
end
