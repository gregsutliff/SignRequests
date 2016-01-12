require 'faker'

namespace :db do 
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    50.times do |n|
      requester = Faker::Name.name
      location = Faker::Number.number(4)
      item_number = Faker::Number.number(4)
      description = Faker::Commerce.product_name
      Request.create!(:requester => requester,
                      :location => location,
                      :item_number => item_number,
                      :description => description)
    end
  end
end
