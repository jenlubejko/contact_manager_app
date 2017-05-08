class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :latitude
      t.string :longitude
      t.integer :contact_id

      t.timestamps
    end
  end
end
