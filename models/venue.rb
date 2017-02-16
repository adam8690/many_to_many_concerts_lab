require_relative('../db/sql_runner.rb')

class Venue

attr_accessor :capacity, :type, :location
attr_reader :id

  def initialize( options )
    @id = options['id']
    @capacity = options['capacity']
    @type = options['type']
    @location = options['location']
  end

  def save()
    sql = "INSERT INTO venues (capacity, location, type) VALUES (#{@capacity}, '#{@location}', '#{@type}') RETURNING id "
    venue = SqlRunner.run(sql).first
    @id = venue['id'].to_i 

  end

  def self.delete_all
  sql = "DELETE FROM venues;"
  SqlRunner.run(sql)
  end

def artists
  sql = "SELECT artists.* FROM artists
  INNER JOIN gigs on gigs.artist_id = artists.id WHERE venue_id = #{id}"
  artists = SqlRunner.run(sql)
  return artists.map {|artist| Artist.new(artist)}
end





end 

