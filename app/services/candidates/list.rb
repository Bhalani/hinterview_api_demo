module Candidates
  class List < GetService
    def initialize(token)
      @path = "/api/v1/candidates"
      @token = token
    end
  end
end
