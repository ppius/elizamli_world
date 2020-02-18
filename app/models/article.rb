class Article < ApplicationRecord
    belongs_to :article

    #Scopes
    scope :active,       -> {where(active: true)}
    scope :alphabetical, -> {order('title')}

end
