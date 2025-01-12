class Category < ApplicationRecord
  has_many :tasks, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  DEFAULT_CATEGORIES = ["Work", "Personal", "Family", "Friends", "Other"] 
end
  