class AddOauthFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    ## Database authenticatable
    add_column :users, :uid, :string
    add_column :users, :avatar_url, :string
    add_column :users, :provider, :string
    add_column :users, :encrypted_password, :string, default: "", null: false # Field is require by Devise, even though we don't use it

    # ## Rememberable
    # add_column :users, :remember_created_at, :datetime

    # ## Trackable
    # add_column :users, :sign_in_count, :integer, default: 0, null: false
    # add_column :users, :current_sign_in_at, :datetime
    # add_column :users, :last_sign_in_at, :datetime
    # add_column :users, :current_sign_in_ip, :string
    # add_column :users, :last_sign_in_ip, :string
    
    add_index :users, :email, unique: true
  end
end
