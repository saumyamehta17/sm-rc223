class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :country
      t.references :order, index: true

      t.timestamps
    end
  end
end
