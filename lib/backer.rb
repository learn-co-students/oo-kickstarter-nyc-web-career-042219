 #require "pry"
class Backer

  attr_reader :backed_projects, :name

  @@all = []

  def initialize(name)
    @name = name
    @backed_projects = []

    @@all << self
  end

  def self.all
    @@all
  end

  def back_project(project)
    #binding.pry
    @backed_projects << project
    Project.all.select do |p|
      if p.title == project.title
        project.backers << self

      end
    end
  end

end
