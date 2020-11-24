class Topic < ApplicationRecord
  validates :slug, presence: true, length: {minimum: 3}
end
