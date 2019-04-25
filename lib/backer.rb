

class Backer

  attr_reader :backed_projects, :name

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def back_project(project)
    if @backed_projects.include?(project)
      
    else
    @backed_projects.push(project)
    project.add_backer(self)
    end
  end




end
