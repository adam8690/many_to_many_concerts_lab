require_relative('../db/sql_runner.rb')

class Artist

attr_accessor :name, :genre
attr_reader :id

def initialize( options )
  @id = options['id'].to_i
  @name = options['name']
  @genre = options['genre']
end

def save()
  sql = "INSERT INTO artists (name, genre) VALUES ('#{@name}', '#{@genre}') RETURNING id "
  artist = SqlRunner.run(sql).first
  @id = artist['id'].to_i 

end

def self.delete_all
sql = "DELETE FROM artists;"
SqlRunner.run(sql)
end

def venues
  sql = "SELECT venues.* FROM venues
        INNER JOIN gigs ON gigs.venue_id = venues.id WHERE artist_id = #{@id};"
  venues = SqlRunner.run(sql)
  result = venues.map { |venue| Venue.new( venue ) }
  return result 
  
end












end