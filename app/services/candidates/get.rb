module Candidates
  class Get < GetService
    def initialize(candidate, token)
      @path = "/api/v1/candidates/#{candidate}"
      @token = token
    end
  end
end
