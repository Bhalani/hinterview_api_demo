module VideoSessions
  class Create < PostService
    def initialize(candidate, token, max_duration = nil, max_bookmarks_count = nil)
      @params = {"max_duration" => max_duration, "max_bookmarks_count" => max_bookmarks_count}
      @path = "/api/v1/candidates/#{candidate}/video_sessions"
      @token = token
    end
  end
end
