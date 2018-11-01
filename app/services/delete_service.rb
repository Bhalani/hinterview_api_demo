require 'net/http'

class DeleteService
  def call
    uri = URI.parse "http://localhost:3000#{@path}"
    http = Net::HTTP.new(uri.host, uri.port)
    req = Net::HTTP::Delete.new(uri.path)
    req["Authorization"] = "Token token=#{@token}"
    http.request(req).body
  end
end
