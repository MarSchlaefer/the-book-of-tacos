class Recipe < ApplicationRecord
  has_many :posts
  has_many :users, through: :posts
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  validates :title, presence: true
  validates :title, length: {in: 2..50}
  # validates :description, presence: true
  # validates :description, length: {in: 2..400}


  def self.search(search)
    if search
      ingredient = Ingredient.find_by(id: search)
      if ingredient
        self.where(id: ingredient.id)
      else
        Recipe.all
      end
    else
      Recipe.all
    end
  end

  def parse_description
    if self.description.match(/[1-9]/)
      self.description.split(/[1-9]. /).select { |x| x.length > 0 }
    else
      self.description.split(". ").select { |x| x.length > 0 }
    end

  end

end
