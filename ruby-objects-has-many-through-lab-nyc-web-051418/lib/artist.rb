require 'pry'
class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
      Song.new(name, self, genre)
  end

  def songs
    #that iterates through all songs and finds the songs that belong to that artist
    Songs.all.select do |song_instance|
        song_instance.artist == self
    end
  end

  def genres
    #genres that iterates over that artist's songs and collects the genre of each song.
    songs.map do |song_instance|
      song_instance.genre
    end
  end


end

# Pry.start
