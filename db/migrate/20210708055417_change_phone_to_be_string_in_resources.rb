class ChangePhoneToBeStringInResources < ActiveRecord::Migration[6.0]
  def change
    change_column :resources, :phone, :string
  end
end
