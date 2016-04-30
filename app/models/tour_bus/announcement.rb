module TourBus
  class Announcement < ActiveRecord::Base
    validates_presence_of :body
    validates_format_of :video, with: URI::HTTPS::ABS_URI_REF, allow_blank: true

    DEFAULT_VIDEO = "ol1rKB55lVU"

    def embed_url
      if query = Rack::Utils.parse_query(URI(video).query)
        youtube_url query["v"] || DEFAULT_VIDEO
      end
    rescue
      youtube_url DEFAULT_VIDEO
    end

    private

    def youtube_url(video)
      "//www.youtube.com/embed/#{video}"
    end
  end
end
