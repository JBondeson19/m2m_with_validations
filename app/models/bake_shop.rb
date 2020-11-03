class BakeShop < ApplicationRecord
    has_many :goods
    validates :name, presence: true, uniqueness: true 
    validates :city, presence: true
    # validates :phone_number, length: {minimum: 13}
end
