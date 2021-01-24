class Project
    attr_reader :title 

    def initialize(title)
        @title = title 
    end 

    def add_backer(backer)
        project_backer = ProjectBacker.new(self, backer)
    end 

    def backers 
        list = ProjectBacker.all.select {|projectbacker| projectbacker.project == self}
        list.collect {|project| project.backer}
    end 


end 