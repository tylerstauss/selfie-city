require 'json'
Dotenv.load

module Instagram
  class Client
    include HTTParty
    base_uri 'https://api.instagram.com/v1'
    

    def get_posts
      client_id = ENV['INSTAGRAM_CLIENT_ID']
      p client_id
      results = self.class.get("/tags/selfie/media/recent?client_id=#{client_id}",
        :query => { limit: 1}
        )
       p results
       # return parseForPhotos(results.body)
    end

  end
end