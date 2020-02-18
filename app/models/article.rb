class Article < ApplicationRecord
    belongs_to :article

    #Validations
    validate_presence_of :title, :content
    
    #Scopes
    scope :active,       -> {where(active: true)}
    scope :alphabetical, -> {order('title')}

end
