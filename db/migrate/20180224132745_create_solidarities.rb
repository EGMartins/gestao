class CreateSolidarities < ActiveRecord::Migration
  def change
    create_table :solidarities do |t|
      t.string :name, limit: 100
      t.decimal :money, precision: 10, scale: 2
      t.decimal :card, precision: 10, scale: 2
      t.references :recipe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
