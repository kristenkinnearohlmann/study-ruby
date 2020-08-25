# categories
#     has many stories
#     has many categorys through stories

describe Category do
    let(:category){Category.new.tap{|c| c.name = "Fiction"}}
    let(:story){Story.new.tap {|s| s.name = "The Old Man and the Sea"}}

    it 'has a name' do
        expect(category.name).to eq("Fiction")
    end

    context 'has many stories' do
        describe '#stories' do
            it 'has an empty array of stories when initialized' do
                expect(category.stories).to match_array([])
            end

            it 'returns a frozen copy of the stories array' do
                expect(category.stories).to be_frozen
            end
        end

        describe '#add_story' do
            it 'can add a story instance' do
                category.add_story(story)

                expect(category.stories).to include(story)
            end

            it 'only allows stories to be added' do
                story = "Old Man and the Sea"

                expect{category.add_story(story)}.to raise_error(AssociationTypeMismatchError)
            end

            it 'reciprocates assigning this category as the storys category' do
                category.add_story(story)

                expect(story.category).to eq(category)
            end
        end

    end


    context 'has many authors through stories' do
        it 'returns the collection of unique author instances based on the stories' do
            king = Author.new{|a| a.name = "Steven King"}
            patterson = Author.new{|a| a.name = "John Patterosn"}
            
            story_1 = Story.new.tap{|s| s.name = "That Scary One"; s.author = patterson}
            story_2 = Story.new.tap{|s| s.name = "That Mystery One"; s.author = patterson}
            story_3 = Story.new.tap{|s| s.name = "The Shining"; s.author = king}

            story_1.category = category  
            story_2.category = category
            story_3.category = category

            expect(category.authors).to match_array([king, patterson])
        end
    end

end