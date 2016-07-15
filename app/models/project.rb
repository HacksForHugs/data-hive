class Project < ActiveRecord::Base
  enum state: [:active, :inactive]
  enum education_level: [:undergraduate, :graduate, :both]
  enum compensation: [:units, :money, :none, :other]

  has_many :tags
  has_many :applications
  has_many :users, through: :applications
end
