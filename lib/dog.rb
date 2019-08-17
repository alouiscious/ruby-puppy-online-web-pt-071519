require 'pry'

# Learning Goals
# Use a class variable to keep track of every instance of a class that is created.
# Write a class method to access the list of all instances of a class, stored in a class variable.

class Dog
  
  attr_accessor :name, :dogs_names, :self, :print_all, :clear_all
  attr_writer :save

  def initialize(name)
    @name = name
    save

  end
  
  @@all = []
  @@dogs_names = []
  

  def self.all          # added attr_accessor
    @@all
    
  end

  def self.print_all        # used .name notation to                             # puts dog name instead of                           # the Dog instance object id.
    @@all.each {|dogs| @@dogs_names << dogs.name}
    puts @@dogs_names
    
  end
  
  def save              # added attr_writer
    @@all << self

  end

  def self.clear_all
    @@clear = @@all.clear
  end
  
end