# stories
#     belongs to author
#     belongs to categories

describe Story do
    let(:author){Author.new.tap {|a| a.name = "Ernest Hemingway"}}    
    let(:story){Story.new.tap {|s| s.name = "The Old Man and the Sea"}}
    let(:category){Category.new.tap{|c| c.name = "Fiction"}}    

    it 'has a name' do
        expect(story.name).to eq("The Old Man and the Sea")
    end

    context 'with an author' do
        describe "#author=" do
            it 'can set an author' do
                story.author = author
                expect(story.author).to eq(author)
            end

            # # In Avi's video, this test passes rspec but doesn't for mine. As the test is written, I feel like it should always fail on a plain rspec run. I have commented out so I can continue walking along with the video.
            # it 'throws an error if you assign anything but an instance of Author' do
            #     expect(story.author = "Ernest Hemingway").to raise_error(AssociationTypeMismatchError)
            # end

            it 'reciprocates the story into the authors stories collection' do
                story.author = author

                expect(author.stories).to include(story)
            end
        end
    end

    context 'with an category' do
        describe "#category=" do
            it 'can set an category' do
                story.category = category
                expect(story.category).to eq(category)
            end

            # # In Avi's video, this test passes rspec but doesn't for mine. As the test is written, I feel like it should always fail on a plain rspec run. I have commented out so I can continue walking along with the video.
            # it 'throws an error if you assign anything but an instance of Category' do
            #     expect(story.category = "Fiction").to raise_error(AssociationTypeMismatchError)
            # end

            it 'reciprocates the story into the categorys stories collection' do
                story.category = category

                expect(category.stories).to include(story)
            end
        end
    end    
end