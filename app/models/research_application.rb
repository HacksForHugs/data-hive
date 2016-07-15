class ResearchApplication < ActiveRecord::Base
  enum status: [:bookmarked, :pending, :approved, :unapproved]

  has_many :tags
  has_many :questions
  belongs_to :user
  belongs_to :project
end
