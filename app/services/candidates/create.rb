module Candidates
  class Create < PostService
    def initialize(token)
      @params = {}
      @path = "/api/v1/candidates"
      @token = token
    end
  end
end
