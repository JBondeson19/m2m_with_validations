class BakeShop < ApplicationRecord
    has_many :goods
    validates :name, presence: true, uniqueness: true 
    validates :city, presence: true
    validates_format_of :phone_number, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"
end
