class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :date, limit: 50, null: false
      t.decimal :canteen_money, precision: 10, scale: 2
      t.decimal :canteen_card, precision: 10, scale: 2
      t.decimal :store_money, precision: 10, scale: 2
      t.decimal :store_card, precision: 10, scale: 2
      t.decimal :raffle_money, precision: 10, scale: 2
      t.decimal :raffle_card, precision: 10, scale: 2
      t.decimal :donation_money, precision: 10, scale: 2
      t.decimal :donation_card, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
