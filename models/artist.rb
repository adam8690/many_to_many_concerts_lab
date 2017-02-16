require_relative('../db/sql_runner.rb')

class Artist

def initialize( options )
  @id = options['id'].to_i
  @name = options['name']
  @genre = options['genre']
end

def save()
  sql = "INSERT INTO artists (name, genre) VALUES ('#{@name}', '#{@genre}') RETURNING id "
  artist = SqlRunner.new(sql).first
  @id = artist['id'].to_i 

end












end