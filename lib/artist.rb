require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  
  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

<<<<<<< HEAD
=======
  #def self.reset_all
    #self.all.clear
  #end

  #def self.count
    #@@artists.count
  #end

>>>>>>> 3377475101de7046a438f10ee105b192f7c08fa3
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
