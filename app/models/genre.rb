require 'pry'
class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    arr = []
    arts = self.artists.all
    arts.each {|a| arr << a.name}
    arr
  end
end
