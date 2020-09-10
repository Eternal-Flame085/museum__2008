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

  def patrons_by_exhibit_interest
    exhibit_interests = Hash.new
    @exhibits.each do |exhibit|
      @patrons.each do |patron|
        if !exhibit_interests.key?(exhibit) &&
          patron.interests.include?(exhibit.name)
          exhibit_interests[exhibit] = [patron]
        elsif patron.interests.include?(exhibit.name)
          exhibit_interests[exhibit] << patron
        elsif !exhibit_interests.include?(exhibit)
          exhibit_interests[exhibit] = []
        end
      end
    end
    exhibit_interests
  end

  def ticket_lottery_contestants(exhibit)
    patrons.find_all do |patron|
      patron.interests.include?(exhibit.name) &&
      patron.spending_money < exhibit.cost
    end
  end
end
