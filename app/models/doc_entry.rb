class DocEntry < ApplicationRecord
  belongs_to :language
  belongs_to :topic
  belongs_to :version
end
