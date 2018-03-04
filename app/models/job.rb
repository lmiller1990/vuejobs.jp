class Job < ApplicationRecord
  validates :name, presence: true
  validates :job_type, presence: true
  validates :description, presence: true

  enum job_type: [ :contract, :part_time, :full_time, :intern ]
end
