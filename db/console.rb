require_relative('../models/artist.rb')
require_relative('../models/venue.rb')
require_relative('../models/gig.rb')

require('pry')
Gig.delete_all
Venue.delete_all
Artist.delete_all


artist1 = Artist.new({'name' => 'Taylor Swift', 'genre' => 'Country Pop'})
 artist1.save
artist2 = Artist.new({'name' => 'Calvin Harris', 'genre' => 'EDM'})
 artist2.save

venue1 = Venue.new({'capacity' => 50, 'type'=>'indoor','location' => 'LA'})
 venue1.save
venue2 = Venue.new({'capacity' => 10, 'type'=>'outdoor','location' => 'Strathallan'})
venue2.save
gig1 = Gig.new({'venue_id' => venue1.id, 'artist_id' => artist1.id, 'date' => '08/06/2017'})
gig1.save
gig2 = Gig.new({'venue_id' => venue2.id, 'artist_id' => artist2.id, 'date' => '07/03/2017'})
gig2.save

binding.pry
nil