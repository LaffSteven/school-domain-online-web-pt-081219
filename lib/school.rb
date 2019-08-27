# code here!

class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    
    # Makes grade the roster key and sets the value to an array
    roster[grade] ||= []
    
    # adds the students into the array keyed to their grade
    roster[grade] << name
  end
  
  def grade(is_in_grade)
    
    # returns the list of names in the specified grade
    roster.detect do |grade, names|
      if is_in_grade == grade
        return names
      end
    end
    
  end
  
  def sort
    
    #create a new hash to return
    roster_hash = {}
    
    #
    roster.each do |grade, names|
      roster_hash[grade] = names.sort
    end
    
    #return the updated hash
    roster_hash
  end
  
end