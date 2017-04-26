class Mosque < ApplicationRecord
  has_many :families
  validates :name, presence: true,
                   uniqueness: { case_sensitive: false }
  validates :pin, presence: true
end
