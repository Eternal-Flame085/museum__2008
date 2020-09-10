class Museum
  attr_reader :name, :exhibits
  def initialize(name)
    @name = name
    @exhibits = []
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
end
