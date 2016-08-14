# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(title: 'Datahive - The Data Science Project Hub', subtitle: 'BIDS and DSSB Collaboration Project', startdate: '08/24/16', enddate: '08/25/16', app_deadline: '08/23/16', description: 'This is a test description', hours_per_week: 1, compensation: 0, education_level: 0, state: 1, field: 1, positions: ['Front End Developer','Web Designer','Researcher','Data Scientist','Engineer'], questions: ['Why do you want to help us?'], created_at: '08/22/16', updated_at: '08/22/16')
