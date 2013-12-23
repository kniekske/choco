class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.integer :rating
      t.text :comment
      t.string :email
      t.references :chocolate, index: true

      t.timestamps
    end
  end
end
