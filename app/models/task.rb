class Task < ApplicationRecord
    validates :title, presence: true

    validate :deadline_cannot_be_in_the_past
  def deadline_cannot_be_in_the_past
    if deadline.present? && deadline < Date.today
        errors.add(:deadline, "cannot be in the past")
    end
  end
end
