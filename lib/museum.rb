class Museum
  attr_reader :name, :exhibits, :patrons
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    exhibits.reduce([]) do |collector, exhibit|
      collector << exhibit if patron.interests.include?(exhibit.name)
      collector
    end
  end

  def admit(patron)
    @patrons << patron
  end
end
