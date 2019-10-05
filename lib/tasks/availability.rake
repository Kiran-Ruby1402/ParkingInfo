require 'net/http'
namespace :import do
  desc "Update parking availability information from API file"
  task parking_availability: :environment do
  	date_time = Time.now.utc.in_time_zone("Singapore").strftime("%Y-%m-%dT%H:%M:%S")
		uri = URI('https://api.data.gov.sg/v1/transport/carpark-availability?date_time='+date_time)
		res = Net::HTTP.get_response(uri) 
		response = res.body
		JSON.parse(response)["items"][0].values_at("carpark_data").compact.flatten.map{|k,v|
			total_lots = k["carpark_info"][0]["total_lots"] rescue 0
			lot_type = k["carpark_info"][0]["lot_type"] rescue "--"
			lots_available = k["carpark_info"][0]["lots_available"] rescue 0
			puts ParkingDetail.find_by(car_park_no: k["carpark_number"]).update(total_lots: total_lots,lot_type: lot_type, lots_available: lots_available) rescue nil
		}
  end
end