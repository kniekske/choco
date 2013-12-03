class CreateChocolates < ActiveRecord::Migration
  def change
    create_table :chocolates do |t|
      t.string :name
      t.string :brand
      t.text :description
      t.integer :cocoa_percentage

      t.timestamps
    end
  end
end
