class AddRegionToResources < ActiveRecord::Migration[6.0]
  def change
    change_table :resources do |r|
      r.remove :phone
      r.string :region, :address, :website, :notes
      r.integer :phone
    end
  end
end
