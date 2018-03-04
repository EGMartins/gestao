json.extract! recipe, :id, :date, :canteen_money, :canteen_card, :store_money, :store_card, :raffle_money, :raffle_card, :donation_money, :donation_card, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
