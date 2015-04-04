class AddEncryptedPasswordToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :encrypted_password, :string
  end
end
