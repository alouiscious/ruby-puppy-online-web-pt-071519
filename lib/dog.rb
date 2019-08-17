require 'pry'

# Learning Goals
# Use a class variable to keep track of every instance of a class that is created.
# Write a class method to access the list of all instances of a class, stored in a class variable.

class Dog
  
  attr_accessor :name, :dogs_names

  def initialize(name)
    @name = name
    save

  end
  
  @@all = []
  @@dogs_names = []
  

  def self.all
    @@all
    
  end
  

  def self.dogs_names
    @@dogs_names
  end

  
  def self.print_all
    @@all.each {|dogs| @@dogs_names << dogs}
# binding.pry
    puts @@dogs_names.name
  end
  
  
  # def save
  #   @@all << self

  # end

  def self.clear_all
    @@clear = @@all.clear
  end
  
end