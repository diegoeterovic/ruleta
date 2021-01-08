class ApiController < ApplicationController
    def self.call_api
        require "uri"
        require "net/http"
        require "json"

        url = URI("https://api.openweathermap.org/data/2.5/onecall?lat=-33.45694&lon=-70.64827&exclude=minutely,hourly,current&units=metric&fields=temp&appid=7776823366e5dca08cf00319c3c436fa")

        https = Net::HTTP.new(url.host, url.port)
        https.use_ssl = true

        request = Net::HTTP::Get.new(url)

        response = https.request(request)
        body = JSON.parse response.read_body 
        
        b=[]
        body["daily"].each do |a|
            if a["temp"]["max"] > 32
                b << a["temp"]["max"]
            end 
        end

        multiplier = 0

        if b.any? 
            multiplier = (8+(rand*7).round(1))/100
        else
            multiplier = (3+(rand*4).round(1))/100
        end
    end


end