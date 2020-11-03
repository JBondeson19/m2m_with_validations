class CreateBakeShops < ActiveRecord::Migration[6.0]
  def change
    create_table :bake_shops do |t|
      t.string :name
      t.string :city
      t.string :phone_number

      t.timestamps
    end
  end
end