require_relative('../db/sql_runner.rb')

class Gig

def initialize( options )
  @id = options['id'].to_i
  @venue_id = options['venue_id'].to_i
  @artist_id = options['artist_id'].to_i
  @date = options['date']
end





end