class Recipe < ActiveRecord::Base
  has_many :solidarities
  
  accepts_nested_attributes_for :solidarities, reject_if: :all_blank, allow_destroy: true
end
