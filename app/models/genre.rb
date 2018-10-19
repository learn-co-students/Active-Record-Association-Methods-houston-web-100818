class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.uniq.count
  end

  def all_artist_names
    self.artists.collect {|one_artist| one_artist.name}.uniq
  end

end
 