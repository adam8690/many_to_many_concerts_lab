require_relative('../db/sql_runner.rb')

class Venue

  def initialize( options )
    @id = options['id']
    @capacity = options['capacity']
    @type = options['type']
    @location = ['location']
  end

  def save()
    sql = "INSERT INTO venue (capacity, location, type) VALUES (#{@capacity}, '#{@location}', '#{@type}') RETURNING id "
    artist = SqlRunner.new(sql).first
    @id = venue['id'].to_i 

  end


end 

