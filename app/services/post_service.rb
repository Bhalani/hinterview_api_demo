require 'net/http'

class PostService
  def call
    uri = URI.parse "http://localhost:3000#{@path}"
    http = Net::HTTP.new(uri.host, uri.port)
    req = Net::HTTP::Post.new(uri.path)
    req["Content-Type"] = "application/json"
    req["Authorization"] = "Token token=#{@token}"
    req.body = @params.to_json
    OpenStruct.new(JSON.parse http.request(req).body)
  end
end
