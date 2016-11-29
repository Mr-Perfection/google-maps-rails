class AddAttributesForAddressToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :street_address, :string
    add_column :posts, :city, :string
    add_column :posts, :state, :string
    add_column :posts, :zip, :string
  end
end
