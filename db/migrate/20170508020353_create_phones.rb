class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.string :work
      t.string :home
      t.string :mobile
      t.integer :contact_id

      t.timestamps
    end
  end
end
