class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :date, limit: 50, null: false
      t.decimal :energy, precision: 10, scale: 2
      t.decimal :wather, precision: 10, scale: 2
      t.decimal :for_rent, precision: 10, scale: 2
      t.decimal :internet, precision: 10, scale: 2
      t.decimal :phone, precision: 10, scale: 2
      t.decimal :safety, precision: 10, scale: 2
      t.decimal :store, precision: 10, scale: 2
      t.decimal :donation, precision: 10, scale: 2
      t.decimal :cleaning, precision: 10, scale: 2
      t.decimal :hp, precision: 10, scale: 2
      t.decimal :bazaar, precision: 10, scale: 2
      t.decimal :stationary, precision: 10, scale: 2
      t.decimal :cost_with_consultants, precision: 10, scale: 2
      t.decimal :healing_house, precision: 10, scale: 2
      t.decimal :food, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
