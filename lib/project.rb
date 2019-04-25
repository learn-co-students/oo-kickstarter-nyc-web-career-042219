require 'pry'
class Project

    @@backers =[]
    attr_accessor :title, :backers

    def initialize(title)
        @title = title
        @@backers= backers
    end

    def backers
        @@backers
    end

    def add_backer (backer)
        @@backers << backer
        if (backer.backed_projects.include?(self) == false)
            backer.back_project(self)
        end
    end

    def self.backed_project
        @@backed_project.uniq
    end

    end
