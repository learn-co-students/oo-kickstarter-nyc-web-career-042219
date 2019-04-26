class Project
  attr_reader :backers, :title

  @@all = []

  def initialize(title)
    @title = title
    @backers = []

    @@all << self
  end

  def self.all
    @@all
  end

  def add_backer(backer)
    @backers << backer

    Backer.all.select do |b|
      if b.name == backer.name
        backer.backed_projects << self
      end
    end
  end


end
