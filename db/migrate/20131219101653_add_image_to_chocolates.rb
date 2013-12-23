class AddImageToChocolates < ActiveRecord::Migration
  def change
    add_column :chocolates, :image, :string
  end
end
