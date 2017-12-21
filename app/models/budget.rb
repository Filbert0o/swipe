# Budget
class Budget < ApplicationRecord
  validates_presence_of :user_id, :budget
end
