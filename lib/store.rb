class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length: { minimum: 3, message:"store name must be greater than 3 characters" }
    validates :annual_revenue, numericality: { only_integer: true, greater_than: 0, message: "store revenue must be a positive integer" }
end
