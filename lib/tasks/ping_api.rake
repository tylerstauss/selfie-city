namespace :photos do
  task :add => :environment do
    client = Instagram::Client.new
    old = Photo.count
    client.get_posts
    updated = Photo.count
    total = updated - old
    puts "Added #{total} new photos"
  end
end
