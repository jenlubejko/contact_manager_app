class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :company
      t.boolean :favorite
      t.string :smallImageURL
      t.string :largeImageURL
      t.string :email
      t.string :website
      t.string :birthdate

      t.timestamps
    end
  end
end
