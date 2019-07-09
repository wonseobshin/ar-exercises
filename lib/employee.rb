class Employee < ActiveRecord::Base
    belongs_to :store
    validates :first_name, :last_name, presence: true
    validates :store_id, inclusion: { in: [true, false] }
    validates :hourly_rate, numericality: { only_integer: true }
end

