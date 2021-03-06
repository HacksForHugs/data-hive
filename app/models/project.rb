# == Schema Information
#
# Table name: projects
#
#  id              :integer          not null, primary key
#  title           :string
#  subtitle        :string
#  startdate       :date
#  enddate         :date
#  app_deadline    :date
#  description     :text
#  hours_per_week  :integer
#  compensation    :integer
#  education_level :integer
#  state           :integer          default(1)
#  positions       :text             is an Array
#  questions       :text             is an Array
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  department      :text             is an Array
#  courses         :text             is an Array
#

class Project < ActiveRecord::Base
  attr_accessor
  enum state: [:active, :inactive]
  enum education_level: [:undergraduate, :graduate, :both]
  enum compensation: [:units, :paid, :other]
  enum department: [:engineeringcs, :economics]

  has_many :project_tags
  has_many :tags, through: :project_tags
  has_many :research_applications
  has_many :users, through: :research_applications

# Current_project is project object, tags is array of tag objects
  def add_tags(current_project, tags)
    tags.each do |tag|
      ProjectTag.create(tag: tag, project: current_project)
    end
  end

  def add_leader(current_project, user)
    ResearchApplication.create(project: current_project, user: user, status: 'leader')
  end
end
