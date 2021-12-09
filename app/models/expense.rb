class Expense < ApplicationRecord
  belongs_to :motive
  belongs_to :month
  belongs_to :year
end
