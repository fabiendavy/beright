class Game < ApplicationRecord
  has_many :results
  has_many :users, through: :results

  validates :token, presence: true
end
