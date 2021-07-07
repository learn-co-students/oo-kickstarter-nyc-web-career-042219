

class Backer

    @@backed_projects =[]


    attr_accessor :name, :backed_projects

    def initialize(name)
        @name=name
        @@backed_projects=backed_projects
    end

    def backed_projects
        @@backed_projects
    end

    def back_project (project)
        @@backed_projects << project
        project.add_backer(self)
        # binding.pry
    end


end
