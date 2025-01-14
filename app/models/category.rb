class Category < ApplicationRecord
  has_many :tasks, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  DEFAULT_CATEGORIES = Category.all.map { |category| category.name } 

  #DEFAULT_CATEGORIES = Category.all.map { |i, c| category.id, category.name }
end
  