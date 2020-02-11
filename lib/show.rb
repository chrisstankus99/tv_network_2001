class Show

  attr_reader :name, :creator, :characters
  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.sum do |character|
      character.salary
    end
  end

  def highest_paid_actor
    highest_paid = @characters.max_by {|character| character.salary}
    highest_paid.actor
  end

  def actors
    array_of_actors = []
    @characters.each do |character|
      array_of_actors << character.actor
    end
    array_of_actors
  end

  def main_character
    @characters.find_all {|character| character.name.upcase == character.name && character.salary > 500000}
  end
end
