class Band < ApplicationRecord
    has_many :user_bands
    
    validates :name, presence: true
end
