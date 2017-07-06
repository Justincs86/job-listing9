class Job < ApplicationRecord
  validates :title, presence: true

  def is_admin?
    is_admin
  end

end
