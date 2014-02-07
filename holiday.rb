# holiday.rb
require 'sinatra'
require 'rest-client'
require 'json'

hostname = '192.168.1.116'
urlEnd = '/iotas/0.1/device/moorescloud.holiday/localhost/setlights'

globes = {"lights" => Array.new(50, '#FF00FF')}

get '/' do
	
	"Hey holiday - I wanna get you on " + hostname 
	"And this is what will happen to you:" + globes.to_json

	RestClient.put "http://" + hostname + urlEnd, globes.to_json


end

