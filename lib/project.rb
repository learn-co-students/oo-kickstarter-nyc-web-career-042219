class Project

  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    if @backers.length != backer.backed_projects.length
        backer.back_project(self)
    end
  end

end
