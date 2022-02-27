class Project
    attr_reader :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers 
        backers = ProjectBacker.all.select{|p| p.project == self}
        backers.collect{|b| b.backer}
    end
end