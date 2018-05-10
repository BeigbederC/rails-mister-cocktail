class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient,
  message: "this cocktail/ingredient already exists" }

end



  #is unique for a given cocktail/ingredient couple (FAILED - 8)
