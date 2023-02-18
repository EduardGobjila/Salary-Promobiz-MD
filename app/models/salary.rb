class Salary < ApplicationRecord
  belongs_to :user
  validates :month, presence: true

  MONTHS = ['January', 'February', 'March', 'April', 'May', 'June',
                 'July', 'Aug', 'September', 'Octomber', 'November', 'December']
end
