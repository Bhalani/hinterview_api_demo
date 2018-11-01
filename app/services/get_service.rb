require 'net/http'

class GetService
  def call
    uri = URI.parse "http://localhost:3000#{@path}"
    http = Net::HTTP.new(uri.host, uri.port)
    req = Net::HTTP::Get.new(uri.path)
    req["Authorization"] = "Token token=#{@token}"
    req["Content-Type"] = "application/json"
    OpenStruct.new(JSON.parse http.request(req).body)
  end
end
