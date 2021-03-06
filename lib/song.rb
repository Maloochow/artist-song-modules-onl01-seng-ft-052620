require 'pry'
# require_relative './module.rb'
require_relative './concerns/memorable.rb'
require_relative './concerns/findable.rb'
require_relative './concerns/paramable.rb'

class Song
  # include Methods::InstanceMethods
  # extend Methods::ClassMethods
  include Paramable
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

def self.all
  @@songs
end

def artist=(artist)
  @artist = artist
end


# def self.find_by_name(name)
#   @@songs.detect{|a| a.name == name}

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end


  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
