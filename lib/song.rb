require 'pry'


class Song
	attr_accessor :name
	attr_reader :artist
	include Paramable
	include Memorable::InstanceMethods
	extend Memorable::ClassMethods
	extend Findable

  @@songs = []

=begin
  def initialize
    @@songs << self
  end
=end

=begin
  def self.find_by_name(name)
    #@@songs.detect{|a| a.name}
	self.all.detect{|a| a.name}
  end
=end

  def artist=(artist)
    @artist = artist
  end

=begin
  def self.reset_all
    @@songs.clear
  end

  def self.count
    self.all.count
  end
=end

=begin
  def to_param
    name.downcase.gsub(' ', '-')
  end
=end


  def self.all
    @@songs
  end
end
