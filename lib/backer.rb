class Backer
    attr_reader :name 

    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        project_backer = ProjectBacker.new(project, self)
    end 

    def backed_projects
        list = ProjectBacker.all.select {|projectbacker| projectbacker.backer == self}
        list.collect {|project| project.project}
    end 
end 