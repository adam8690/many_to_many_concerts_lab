require_relative('../db/sql_runner.rb')

class Venue

attr_accessor :capacity, :type, :location
attr_reader :id

  def initialize( options )
    @id = options['id']
    @capacity = options['capacity']
    @type = options['type']
    @location = ['location']
  end

  def save()
    sql = "INSERT INTO venue (capacity, location, type) VALUES (#{@capacity}, '#{@location}', '#{@type}') RETURNING id "
    artist = SqlRunner.run(sql).first
    @id = venue['id'].to_i 

  end

  def self.delete_all
  sql = "DELETE FROM venues;"
  SqlRunner.run(sql)
  end

end 

