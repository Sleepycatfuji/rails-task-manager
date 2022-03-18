class Task < ApplicationRecord
  validates :title, presence: :true

  def truncated_details
    details[5..50]
  end
end
