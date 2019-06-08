class Knowledgegenre < ApplicationRecord
  has_many :knowledgepost
  
  validates :name, presence: {massage:'は、必須項目です。'}
end
