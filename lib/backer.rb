class Backer
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        projects = ProjectBacker.all.select{|p| p.backer == self}
        projects.collect{|p| p.project}
    end
end