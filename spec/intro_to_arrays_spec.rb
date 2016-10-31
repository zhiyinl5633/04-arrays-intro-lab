require './lib/intro_to_arrays.rb'
describe "working with arrays" do

  context 'instantiating' do
    describe "#instantiate_new_array" do
      it "creates a new array and returns it" do
        expect(instantiate_new_array).to be_an(Array)
      end

      it "returns an array that is empty" do
        expect(instantiate_new_array.size).to eq(0)
      end
    end
    
    describe "#array_with_two_elements" do
      it "creates a new array with two elements in it and returns that array" do
        expect(array_with_two_elements).to be_an(Array)
      end

      it "returns an array that has 2 objects in it" do
        expect(array_with_two_elements.size).to eq(2)
      end
    end
  end

  context 'indexing' do
    describe "#first_element" do
      it "takes in an argument of an array and returns the first element in the array using its positive index" do
        groceries = ["eggs","milk","cheese","oj"]
        colors = ["red","green","blue","yellow","orange"]
        expect(first_element(groceries)).to eq("eggs")
        expect(first_element(colors)).to eq("red")
      end
    end

    describe "#third_element" do 
      it "takes in an argument of an array and returns the third element in the array using its positive index" do
        groceries = ["eggs","milk","cheese","oj"]
        colors = ["red","green","blue","yellow","orange"]
        expect(third_element(groceries)).to eq("cheese")
        expect(third_element(colors)).to eq("blue")
      end
    end

    describe "#last_element" do
      it "takes in an argument of an array and returns the last element in the array using its negative index" do
        groceries = ["eggs","milk","cheese","oj"]
        colors = ["red","green","blue","yellow","orange"]
        expect(last_element(groceries)).to eq("oj")
        expect(last_element(colors)).to eq("orange")
      end
    end
  end

  context 'using ruby array methods to return values from an array' do
    describe "#first_element_with_array_methods" do 
      it 'takes in an argument of an array and returns the first element in the array, without referencing the index number of that element' do
        groceries = ["eggs","milk","cheese","oj"]
        colors = ["red","green","blue","yellow","orange"]
        expect(first_element_with_array_methods(groceries)).to eq("eggs")
        expect(first_element_with_array_methods(colors)).to eq("red")
      end
    end

    describe "#last_element_with_array_methods" do
      it 'takes in an argument of an array and returns the last element in the array, wihtout referencing the index number' do
        groceries = ["eggs","milk","cheese","oj"]
        colors = ["red","green","blue","yellow","orange"]
        expect(last_element_with_array_methods(groceries)).to eq("oj")
        expect(last_element_with_array_methods(colors)).to eq("orange")
      end
    end
  end

  context 'using ruby array methods to get information about an array' do
    describe "#length_of_array" do
      it 'takes in an argrument of an array and returns the length of the array' do
        languages = ["Ruby", "Javascript", "Python", "C++", "Java", "Lisp", "PHP", "Clojure"]
        concepts = ["methods","loops","conditionals","arrays","hashes"]
        expect(length_of_array(languages)).to eq(8)
        expect(length_of_array(concepts)).to eq(5)
      end
    end
  end


end
