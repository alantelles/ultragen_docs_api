class Language < ApplicationRecord
  validates :name, presence: true, length: {minimum: 4}
  validates :slug, presence: true, length: {minimum: 2}
end
