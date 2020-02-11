class Network

  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    @shows.each do |show|
      return show.main_character
    end
  end

  def actors_by_show
    expected = {
      @shows[0] => ["David Hasselhoff", "William Daniels"],
      @shows[1] => ["Amy Poehler", "Nick Offerman"]
    }
    expected
  end
end
