class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}

  validates :name, length:{ minimum: 1}
  validates :address, length:{ minimum: 1}
  validates :category, length:{ minimum: 1}

end
