class CreateBananas < ActiveRecord::Migration[5.1]
  def change
    create_table :bananas do |t|
      t.string :price
      t.string :color
      t.string :actually_plantain

      t.timestamps
    end
  end
end
