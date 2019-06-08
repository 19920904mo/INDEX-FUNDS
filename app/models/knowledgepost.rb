class Knowledgepost < ApplicationRecord
  belongs_to :knowledgegenre
  
  validates :title, :content, presence: {massage:'は、必須項目です。'}
end
