describe Animal do

    animal = Animal.new

    context 'Methods' do
        context '.new_from_wikipedia' do
            it 'instantiates an animal based on a wikipedia URL' do
                hippo = Animal.new_from_wikipedia('https://en.wikipedia.org/wiki/Hippopotamus')

                expect(hippo).to be_an_instance_of(Animal)
                expect(hippo.name).to eq("Hippopotamus")
                # expect(hippo.kingdom).to eq("Animalia")
                # expect(hippo.phylum).to eq("Chordata")
                # expect(hippo.klass).to eq("Mammalia")
                # expect(hippo.order).to eq("Artiodactyla")
                # expect(hippo.family).to eq("Hippopotamidae")
                # expect(hippo.genus).to eq("Hippopotamus")
                # expect(hippo.species).to eq("H. amphibius")
            end
        end
    end

    context 'Properties' do

        it 'includes Name' do
            animal.name = "Name"
            expect(animal.name).to eq("Name")
        end
        it 'includes Kingdom' do
            animal.kingdom = "Kingdom"
            expect(animal.kingdom).to eq("Kingdom")
        end
        it 'includes Phylum' do
            animal.phylum = "Phylum"
            expect(animal.phylum).to eq("Phylum")
        end
        it 'includes Klass (renamed to avoid confusion with object name)' do # best practice to rename with "k" avoid confusion with object name
            animal.klass = "Klass"
            expect(animal.klass).to eq("Klass")
        end
        it 'includes Order' do
            animal.order = "Order"
            expect(animal.order).to eq("Order")
        end
        it 'includes Family' do
            animal.family = "Family"
            expect(animal.family).to eq("Family")
        end
        it 'includes Genus'do
            animal.genus = "Genus"
            expect(animal.genus).to eq("Genus")
        end
        it 'includes Species' do
            animal.species = "Species"
            expect(animal.species).to eq("Species")
        end

    end

end