require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  
  @@songs = []

  def artist=(artist)
    @artist = artist
  end

<<<<<<< HEAD
=======
  #def self.reset_all
    #@@songs.clear
  #end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  #def self.count
    #self.all.count
  #end

>>>>>>> 3377475101de7046a438f10ee105b192f7c08fa3
  def self.all
    @@songs
  end
end
