require 'csv' 
namespace :import do
  desc "Import parking information from CSV file"

  task parking_information: :environment do
    CSV.foreach("#{Rails.root}/public/hdb-carpark-information.csv", headers: true) do |row|
      p ParkingDetail.create(row.to_h)
    end
  end
end