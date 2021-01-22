class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[6.0]
  def change
    
    change_table(:users) do |t|
      ## Required
      t.string :provider, :null => false, :default => "email", after: :encrypted_password
      t.string :uid, :null => false, :default => "", after: :encrypted_password

      ## Tokens
      t.json :tokens, after: :encrypted_password

    end

    add_index :users, [:uid, :provider],     unique: true
  end
end
