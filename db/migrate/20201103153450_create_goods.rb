class CreateGoods < ActiveRecord::Migration[6.0]
  def change
    create_table :goods do |t|
      t.string :name
      t.float :price
      t.integer :calories
      t.integer :bake_shop_id 

      t.timestamps
    end
  end
end
