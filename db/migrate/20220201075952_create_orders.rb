class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :mode
      t.string :card_number
      t.string :name_on_card

      t.timestamps
    end
  end
end
