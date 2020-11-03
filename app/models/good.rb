class Good < ApplicationRecord
    belongs_to :bake_shops
    # validates :name, presence: true, uniqueness: true, length: {minimum: 4}
    # validates :calories, numericality: { greater_than: 50 }
    # validates :price, numericality: {greater_than: 1.00, less_than: 100.00 }
end
