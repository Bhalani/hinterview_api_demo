module VideoSessions
  class Destroy < DeleteService
    def initialize(video_session, token)
      @path = "/api/v1/video_sessions/#{video_session}"
      @token = token
    end
  end
end
