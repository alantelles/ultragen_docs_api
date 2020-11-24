class Version < ApplicationRecord
  validates :name, presence: true, format: {with: /\A\d+(\.\d+)*(\-[a-z]+\d*)?\z/}
  validates :github_tag, format: {with: /\A\d+\.\d+\.\d+\z/}
end
