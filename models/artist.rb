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












end