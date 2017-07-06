class Job < ApplicationRecord
  validates :title, presence: true

  validates_presence_of :wage_lower_bound, :wage_upper_bound, presence: true
  validates :wage_lower_bound, numericality: { greater_than: 0 }

  def is_admin?
    is_admin
  end

end
