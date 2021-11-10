class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true, allow_blank: false
  validates :category, presence: true, allow_blank: false, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates :address, presence: true, allow_blank: false
end
