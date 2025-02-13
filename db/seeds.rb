# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'
require 'securerandom'

30.times do
  Collaborator.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    uuid: SecureRandom.uuid,
    email: Faker::Internet.email,
    time_on_teams: Time.now - 30.days, # Fix here
    certified: [true, false].sample,
    seniority: %w(junior semi-senior senior).sample,
    tech_stack: %w(ruby rails react python django).sample,
    total_montly_salary: Faker::Number.decimal(l_digits: 4, r_digits: 2),
    account: Faker::Company.name,
    started_arkus_nexus: Time.now - 100.days
  )
end
