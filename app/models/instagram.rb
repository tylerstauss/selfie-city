require 'json'

module Instagram
  class Client
    include HTTParty
    base_uri 'https://api.instagram.com/v1'


    def get_posts

       results = self.class.get("/tags/selfie/media/recent?client_id=#{ENV('INSTAGRAM_CLIENT_ID')}",
        :query => { limit: 1}
        )
       return parseForPhotos(results.body)
    end

  end
end