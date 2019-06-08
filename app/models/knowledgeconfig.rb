class Knowledgeconfig < ApplicationRecord
  validates :title, :stylename, presence: {massage:'は、必須項目です。'}
end
