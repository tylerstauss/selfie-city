require 'json'
require 'geocoder'
Dotenv.load

module Instagram
  class Client
    include HTTParty
    base_uri 'https://api.instagram.com/v1'
    

    def get_posts
      client_id = ENV['INSTAGRAM_CLIENT_ID']
      results = self.class.get("/tags/selfie/media/recent?client_id=#{client_id}",
        :query => { limit: 1}
        )
       parse_photos(results)
    end

    def parse_photos(results)
      json_data = JSON.parse(results.body)
      photo_json = json_data['data']
      add_photos_to_database(photo_json)
    end

    def add_photos_to_database(photos)
      photos.each do |photo|
        if photo['location'] && !photo['location'].nil?
          url = photo['images']['standard_resolution']['url']
          instagram_id = photo['id']
          instagram_text = photo['caption']['text'] if photo['caption']
          latitude = photo['location']['latitude']
          longitude = photo['location']['longitude']
          coords = latitude.to_s + ',' + longitude.to_s
          city = get_city(coords)
          p city
          p '$' * 50
          city = City.find_or_create_by_name(name: city)
          p city
          @photo = Photo.create(url: url, instagram_id: instagram_id, latitude: latitude, longitude: longitude, city: city)
        end
      end
    end

    def get_city(coords)
        result = Geocoder.search(coords).first 
        if (result) 
          city = result.city
        end
        city
      end

  end
end