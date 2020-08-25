class Category
    attr_accessor :name

    def initialize
        @stories = []
    end

    def stories
        @stories.dup.freeze
    end

    def add_story(story) # has many stories interface
        # interface over Array#push to implement custom error
        raise AssociationTypeMismatchError, "#{story.class} received, Story expected." if !story.is_a?(Story)
        @stories << story
        story.category = self unless story.category == self
    end   

    def authors # has many authors through stories
        self.stories.collect{|s| s.author}.uniq
    end   

end