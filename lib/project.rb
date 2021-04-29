class Project
    attr_reader :title
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def all_backers
        ProjectBacker.all.select do |backer_instance|
            backer_instance.project == self
        end
    end

    def backers 
        all_backers.map do |backer_instance|
            backer_instance.backer
        end
    end

    
end