require 'pry'

class Backer

attr_reader :name

def initialize(name)
  @name = name
  @backed_projects = []
end

def backed_projects
  @backed_projects
end

def back_project(project)
  @backed_projects << project
  if @backed_projects.length != project.backers.length
    project.add_backer(self)
  end
end

end
